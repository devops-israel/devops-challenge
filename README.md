# Welcome to the DevOps challang

**Your `codeName = <YOUR_INITIALS>`** e.g John Snow codeName = "js" - Use it throughout the task.  
We've found a data leak in our company, but before we're deleting our resources, we need you to extract the information and deliver it.  
You're assigned with the creation of a device that will be used as a POC to transfer highly sensitive data.  
With the language of your choice follow these instructions in the next 48 hours to stop the leak:  

1. Fork this project, change its name and restructure it as you see fit
2. Write an application that will extract the secret string from a DynamoDB in our account and publish it
3. The `secret_code` lies in a DynamoDB document `WHERE` `code_name = #{codeName}` 
4. The keys that will provide access to the account are available [here](https://pass.spot.im) [*NOTE: The keys are only visible once*]
5. Create a docker container that will publish `secret_code` to `http://127.0.0.1:8000/secret`
6. Once the code is retrieved, in order to stop the leak change `secret_key` in the document to its reverse order
7. Create a [Travis CI](https://travis-ci.org/) account, and add a `travis.yml` that will build, test and deploy your code and container/s
8. The Travis process should `publish` the contianer to your own docker hub
9. A link to the container on docker hun should be published as a result to `/health` (See requirement #2)
10. Once completed, send an email to `omer@devops.co.il`:
```
Subject: Task complete - #{codeName}
Content: Name:      <YOUR_NAME>
         Project:   <LINK TO GITHUB PROJECT>
```


### Required result should:

1. Return `{ secret_code: <CODE> }` to http://127.0.0.1:8000/secret
2. Return `{ status: healthy, container:<LINK_TO_HUB> }` to http://127.0.0.1:8000/health
3. Running `docker-compose up` should get everything up and running
4. Contain a minimal test suit
5. Be tested and built in Travis on push to `#{codeName}` branch
6. Contain a well documented code, and a `SUMMARY.md` file explaining each step of the development process
7. Contain a `TROUBLE.md` describing difficulties along the way and their solutions


### Suggestions (These are only for guidance and can be ignored if you choose so):

1. Use [nginx](https://www.nginx.com/resources/wiki/) for routing
2. Use a different container for your app
3. Create a project structure to support your test suit and application logical parts (e.g `/app`, `/test`, `/docs` etc)
4. Use informative commit messages
5. Think *security*: Avoid exposing secrets to git in any way (Tip: use `.env` file for the `compose` part, and `gitignore` it)

---

```
omer@devops.co.il
```
