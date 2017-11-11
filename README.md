# Welcome to the DevOps challange

### Prerequisites

* A GitHub account
* A [TravisCI](https://docs.travis-ci.com) account 
* A [Docker hub](https://hub.docker.com) account
* Local Docker installation


### Instructions

**Your `codeName = <YOUR_INITIALS>`** e.g John Snow codeName = "js" - Use it throughout the task.  
We've found a data leak in our company, but before we're deleting our resources, we need you to extract the information and deliver it.  
You're assigned with the creation of a device that will be used as a POC to transfer highly sensitive data.  
With the language of your choice follow these instructions in the next 72 hours to stop the leak:  

1. Fork this project, change its name and restructure it as you see fit
2. Write an application that will extract the secret string from a DynamoDB table in our account  
3. The `secret_code` lies in a DynamoDB table `devops-challange` where `code_name = #{codeName}` 
4. The keys that will provide access to the account have been provided separatly 
5. Create a docker container that will publish `secret_code` to `http://127.0.0.1:5000/secret`
6. Create a [Travis CI](https://travis-ci.org/) account, and add a `travis.yml` that will build, test and deploy your code and container/s
7. The Travis process should `publish` the contianer to your own docker hub account
8. A link to the container on docker hub should be published as `container` to `/health` (See requirement #2)
9. A link to the GitHub project should be published as `project` to `/health` (See requirement #2)
10. Once completed, reply to the challange email:
```
Subject: Task complete - #{codeName}
Content: Name:      <YOUR_NAME>
         Project:   <LINK TO GITHUB PROJECT>
```

#### Bonus - This is not a must
> To wrap up the project, prepare a `environment.template` file, that would contain a CloudFormation YAML.  
> The template should create an environment ready to deploy your application to AWS.  
> You may choose any AWS service you see fit for the deployment.  
> When using the template in CloudFormation, the user should be able to fill in parameters required (e.g `vpc-id`, `instance-type` etc).  

---

### The result should

1. Return `{ secret_code: <CODE> }` to http://127.0.0.1:5000/secret
2. Return `{ status: healthy, container: <LINK_TO_HUB>, project: github.com/omerxx/ecscale }` to http://127.0.0.1:5000/health
3. Running `docker-compose up` should get everything up and running
4. Contain a minimal test suit
5. Be tested and built in Travis on push to `master` branch
6. Contain a well documented code, and a `SUMMARY.md` file explaining each step of the development process
7. Contain a `TROUBLE.md` describing difficulties along the way and their solutions
8, Be published as a GitHub project under your account e.g `github.com/<GitHub_User>/<Challange_Project>`


### Guidance (These are only for general assitance and are not a must):

1. Use informative commit messages
2. Think *security*: Avoid exposing secrets in any way (Tip: use `.env` file for the `compose`ing, and `.gitignore` it)
3. Different routers in [Ruby](https://github.com/sinatra/sinatra), [Python](http://flask.pocoo.org/), [Go](https://golang.org/pkg/net/http/) and [Node](https://www.npmjs.com/package/http-server)
4. Structure the project in a maintainable logic way, you may use `/example`
---

```
omer@devops.co.il
```
