# Postmortem

<img src=./image.png width=50%>

## Issue Summary
On May 5, 2023, from 9:00 AM to 12:00 PM GMT+2, users were unable to access our company's web application. The outage impacted all users attempting to log into the application during this time period, resulting in a 100% service outage. Users were experiencing a slow loading time or an error message when attempting to access the application.

## Root Cause
Our team identified the root cause of the issue as a configuration error in the load balancer. The load balancer had reached its connection limit, causing it to reject new connections to the web servers.

## Timeline
- 9:00 AM GMT+2: The issue was detected through monitoring alerts of a high number of requests to the load balancer.
- 9:05 AM GMT+2: Our team began investigating the issue, assuming it was a database or application server issue.
- 9:30 AM GMT+2: After investigating the database and application server, it was discovered that the load balancer was the root cause.
- 10:00 AM GMT+2: The load balancer was restarted in an attempt to fix the issue.
- 10:15 AM GMT+2: The issue persisted after the restart, and our team escalated the incident to the network infrastructure team.
- 11:00 AM GMT+2: The network infrastructure team identified the configuration error in the load balancer and resolved the issue.
- 12:00 PM GMT+2: The web application was fully restored and accessible to all users.

## Misleading Investigation/Debugging Paths
Initially, our team assumed the issue was with the database or application servers. This assumption led to a delay in identifying the root cause and escalating the incident to the appropriate team.

## Escalation
The incident was escalated to the network infrastructure team after the load balancer restart failed to resolve the issue.

## Resolution
The network infrastructure team identified and corrected the configuration error in the load balancer, which restored full functionality to the web application.

## Corrective and Preventative Measures
To prevent similar outages from occurring in the future, our team has implemented the following measures:

- Increase monitoring of the load balancer to detect connection limit issues
- Review load balancer configurations to ensure they are optimized for our current traffic load
- Update incident response procedures to escalate issues to the appropriate team faster
- Conduct training sessions for team members on identifying and troubleshooting load balancer issues

## Tasks
- Review and optimize load balancer configurations
- Increase monitoring of the load balancer
- Update incident response procedures
- Conduct training sessions for team members

In conclusion, the outage was caused by a configuration error in the load balancer, which was resolved by the network infrastructure team. Our team has implemented measures to prevent similar outages from occurring in the future and will continue to review and optimize our systems to ensure the highest level of service availability for our users.