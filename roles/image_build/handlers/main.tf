- name: Tag Image and Push to ECR [GIT COMMIT HASH]
  docker_image:
    name: "{{ aws_account_id }}.dkr.ecr.{{ aws_region }}.amazonaws.com/prod-munna:local"
    repository: "{{ aws_account_id }}.dkr.ecr.{{ aws_region }}.amazonaws.com/prod-munna:{{ code_commit_id.stdout }}"
    push: yes
    timeout: 600

- name: Tag Image and Push to ECR [LATEST]
  docker_image:
    name: "{{ aws_account_id }}.dkr.ecr.{{ aws_region }}.amazonaws.com/prod-munna:local"
    repository: "{{ aws_account_id }}.dkr.ecr.{{ aws_region }}.amazonaws.com/prod-munna:latest"
    push: yes
    timeout: 600

# - name: Tag Image and Push to ECR [GIT COMMIT HASH] - vendor100
#   docker_image:
#     name: "{{ aws_account_id }}.dkr.ecr.{{ aws_region }}.amazonaws.com/{{ env }}-{{ project_name }}-{{ module }}:local"
#     repository: "{{ aws_account_id }}.dkr.ecr.{{ aws_region }}.amazonaws.com/{{ env }}-{{ project_name }}-{{ module }}:{{ code_commit_id.stdout }}"
#     push: yes
#     timeout: 600

# - name: Tag Image and Push to ECR [LATEST] - vendor100
#   docker_image:
#     name: "{{ aws_account_id }}.dkr.ecr.{{ aws_region }}.amazonaws.com/{{ env }}-{{ project_name }}-{{ module }}:local"
#     repository: "{{ aws_account_id }}.dkr.ecr.{{ aws_region }}.amazonaws.com/{{ env }}-{{ project_name }}-{{ module }}:latest"
#     push: yes
#     timeout: 600
