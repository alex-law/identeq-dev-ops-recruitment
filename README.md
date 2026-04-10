# Candidate Exercise

You are joining a team that runs a small Python service as a container on AWS ECS Fargate.

This starter repo is intentionally close to working, but it contains a few small bugs and configuration mistakes.

In the session, work with the interviewer to find and fix those issues so the service is easier to run locally and more realistic to deploy.

## Your Tasks

Aim to make progress on as many of these as you can in roughly 40 minutes:

1. Run the usual local checks and identify the small issues stopping the service from working cleanly.
2. Fix the problems in the Python, Docker, and OpenTofu setup.
3. Make sure the service is consistent across app code, tests, container config, and infrastructure config.
4. Talk through what else would be needed for a real production deployment.

## What Kind Of Exercise This Is

This is mainly a debugging and bug-fixing exercise, not a build-from-scratch exercise.

You should expect the repository to be mostly correct, with a few intentional issues that are meant to be easy to spot if you compare the files carefully and run the normal commands in order.

## Expected Outcomes

By the end of the interview, a good solution will usually include:

- a corrected dependency file
- passing tests
- a Python service that responds on `/` and `/health`
- container behaviour that works on port `8080`
- a Docker image that is close to best practice for a small service
- OpenTofu that covers ECR, CloudWatch logs, IAM task execution and ECS cluster

## Constraints

- You do not need to provision real AWS infrastructure during the interview.
- You do not need to build a full VPC or load balancer.
- It is fine to explain tradeoffs out loud instead of implementing every last detail.
- Prefer small, targeted fixes over large rewrites.

## Environment Variables

The service is expected to use these where useful:

- `SERVICE_NAME`
- `SERVICE_VERSION`
- `PORT`
- `AWS_REGION`

## Handy Local Commands

```powershell
python -m venv .venv
.venv\Scripts\activate
python -m pip install -r app/requirements.txt -r app/requirements-dev.txt
python -m pytest
python -m app
docker build -t interview-service .
docker run --rm -p 8080:8080 interview-service
cd terraform
tofu init
tofu validate
```

## Suggested Approach

If you are not sure where to start, this is a sensible order:

1. Install dependencies.
2. Run the tests.
3. Run the app locally if needed.
4. Review the Dockerfile.
5. Review the OpenTofu configuration.

In other words: follow the normal developer workflow and use the failures or mismatches to guide you.

## What We Care About

We are not testing whether you can memorise every OpenTofu argument or AWS feature. We care more about:

- spotting small but important bugs quickly
- structured debugging
- practical Docker habits
- clear AWS reasoning
- collaboration and communication
