FROM registry.access.redhat.com/ubi9/ubi-minimal:latest

RUN microdnf update -y --disableplugin=subscription-manager
RUN microdnf install python-pip -y --disableplugin=subscription-manager
RUN pip install ansible boto3 botocore
RUN ansible-galaxy collection install community.aws

