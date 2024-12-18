abstract class ApiMockJson {
  String get mockDetailJson;
  String get mockSearchJson;
}

class ApiMockJsonImpl extends ApiMockJson {
  @override
  String get mockDetailJson => '''
  {
    "id": 892275,
    "node_id": "MDEwOlJlcG9zaXRvcnk4OTIyNzU=",
    "name": "retrofit",
    "full_name": "square/retrofit",
    "private": false,
    "owner": {
        "login": "square",
        "id": 82592,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjgyNTky",
        "avatar_url": "https://avatars.githubusercontent.com/u/82592?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/square",
        "html_url": "https://github.com/square",
        "followers_url": "https://api.github.com/users/square/followers",
        "following_url": "https://api.github.com/users/square/following{/other_user}",
        "gists_url": "https://api.github.com/users/square/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/square/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/square/subscriptions",
        "organizations_url": "https://api.github.com/users/square/orgs",
        "repos_url": "https://api.github.com/users/square/repos",
        "events_url": "https://api.github.com/users/square/events{/privacy}",
        "received_events_url": "https://api.github.com/users/square/received_events",
        "type": "Organization",
        "user_view_type": "public",
        "site_admin": false
    },
    "html_url": "https://github.com/square/retrofit",
    "description": "A type-safe HTTP client for Android and the JVM",
    "fork": false,
    "url": "https://api.github.com/repos/square/retrofit",
    "forks_url": "https://api.github.com/repos/square/retrofit/forks",
    "keys_url": "https://api.github.com/repos/square/retrofit/keys{/key_id}",
    "collaborators_url": "https://api.github.com/repos/square/retrofit/collaborators{/collaborator}",
    "teams_url": "https://api.github.com/repos/square/retrofit/teams",
    "hooks_url": "https://api.github.com/repos/square/retrofit/hooks",
    "issue_events_url": "https://api.github.com/repos/square/retrofit/issues/events{/number}",
    "events_url": "https://api.github.com/repos/square/retrofit/events",
    "assignees_url": "https://api.github.com/repos/square/retrofit/assignees{/user}",
    "branches_url": "https://api.github.com/repos/square/retrofit/branches{/branch}",
    "tags_url": "https://api.github.com/repos/square/retrofit/tags",
    "blobs_url": "https://api.github.com/repos/square/retrofit/git/blobs{/sha}",
    "git_tags_url": "https://api.github.com/repos/square/retrofit/git/tags{/sha}",
    "git_refs_url": "https://api.github.com/repos/square/retrofit/git/refs{/sha}",
    "trees_url": "https://api.github.com/repos/square/retrofit/git/trees{/sha}",
    "statuses_url": "https://api.github.com/repos/square/retrofit/statuses/{sha}",
    "languages_url": "https://api.github.com/repos/square/retrofit/languages",
    "stargazers_url": "https://api.github.com/repos/square/retrofit/stargazers",
    "contributors_url": "https://api.github.com/repos/square/retrofit/contributors",
    "subscribers_url": "https://api.github.com/repos/square/retrofit/subscribers",
    "subscription_url": "https://api.github.com/repos/square/retrofit/subscription",
    "commits_url": "https://api.github.com/repos/square/retrofit/commits{/sha}",
    "git_commits_url": "https://api.github.com/repos/square/retrofit/git/commits{/sha}",
    "comments_url": "https://api.github.com/repos/square/retrofit/comments{/number}",
    "issue_comment_url": "https://api.github.com/repos/square/retrofit/issues/comments{/number}",
    "contents_url": "https://api.github.com/repos/square/retrofit/contents/{+path}",
    "compare_url": "https://api.github.com/repos/square/retrofit/compare/{base}...{head}",
    "merges_url": "https://api.github.com/repos/square/retrofit/merges",
    "archive_url": "https://api.github.com/repos/square/retrofit/{archive_format}{/ref}",
    "downloads_url": "https://api.github.com/repos/square/retrofit/downloads",
    "issues_url": "https://api.github.com/repos/square/retrofit/issues{/number}",
    "pulls_url": "https://api.github.com/repos/square/retrofit/pulls{/number}",
    "milestones_url": "https://api.github.com/repos/square/retrofit/milestones{/number}",
    "notifications_url": "https://api.github.com/repos/square/retrofit/notifications{?since,all,participating}",
    "labels_url": "https://api.github.com/repos/square/retrofit/labels{/name}",
    "releases_url": "https://api.github.com/repos/square/retrofit/releases{/id}",
    "deployments_url": "https://api.github.com/repos/square/retrofit/deployments",
    "created_at": "2010-09-06T21:39:43Z",
    "updated_at": "2024-11-30T22:25:59Z",
    "pushed_at": "2024-11-28T12:49:30Z",
    "git_url": "git://github.com/square/retrofit.git",
    "ssh_url": "git@github.com:square/retrofit.git",
    "clone_url": "https://github.com/square/retrofit.git",
    "svn_url": "https://github.com/square/retrofit",
    "homepage": "https://square.github.io/retrofit/",
    "size": 4979,
    "stargazers_count": 43141,
    "watchers_count": 43141,
    "language": "HTML",
    "has_issues": true,
    "has_projects": false,
    "has_downloads": true,
    "has_wiki": true,
    "has_pages": true,
    "has_discussions": true,
    "forks_count": 7304,
    "mirror_url": null,
    "archived": false,
    "disabled": false,
    "open_issues_count": 154,
    "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
    },
    "allow_forking": true,
    "is_template": false,
    "web_commit_signoff_required": false,
    "topics": [
        "android",
        "java"
    ],
    "visibility": "public",
    "forks": 7304,
    "open_issues": 154,
    "watchers": 43141,
    "default_branch": "trunk",
    "permissions": {
        "admin": false,
        "maintain": false,
        "push": false,
        "triage": false,
        "pull": true
    },
    "custom_properties": {},
    "organization": {
        "login": "square",
        "id": 82592,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjgyNTky",
        "avatar_url": "https://avatars.githubusercontent.com/u/82592?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/square",
        "html_url": "https://github.com/square",
        "followers_url": "https://api.github.com/users/square/followers",
        "following_url": "https://api.github.com/users/square/following{/other_user}",
        "gists_url": "https://api.github.com/users/square/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/square/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/square/subscriptions",
        "organizations_url": "https://api.github.com/users/square/orgs",
        "repos_url": "https://api.github.com/users/square/repos",
        "events_url": "https://api.github.com/users/square/events{/privacy}",
        "received_events_url": "https://api.github.com/users/square/received_events",
        "type": "Organization",
        "user_view_type": "public",
        "site_admin": false
    },
    "network_count": 7304,
    "subscribers_count": 1557
}
  ''';

  @override
  String get mockSearchJson => '''
  {
    "total_count": 25245,
    "incomplete_results": false,
    "items": [
        {
            "id": 1126833,
            "node_id": "MDEwOlJlcG9zaXRvcnkxMTI2ODMz",
            "name": "retrofitting-tests",
            "full_name": "tonybaines/retrofitting-tests",
            "private": false,
            "owner": {
                "login": "tonybaines",
                "id": 379641,
                "node_id": "MDQ6VXNlcjM3OTY0MQ==",
                "avatar_url": "https://avatars.githubusercontent.com/u/379641?v=4",
                "gravatar_id": "",
                "url": "https://api.github.com/users/tonybaines",
                "html_url": "https://github.com/tonybaines",
                "followers_url": "https://api.github.com/users/tonybaines/followers",
                "following_url": "https://api.github.com/users/tonybaines/following{/other_user}",
                "gists_url": "https://api.github.com/users/tonybaines/gists{/gist_id}",
                "starred_url": "https://api.github.com/users/tonybaines/starred{/owner}{/repo}",
                "subscriptions_url": "https://api.github.com/users/tonybaines/subscriptions",
                "organizations_url": "https://api.github.com/users/tonybaines/orgs",
                "repos_url": "https://api.github.com/users/tonybaines/repos",
                "events_url": "https://api.github.com/users/tonybaines/events{/privacy}",
                "received_events_url": "https://api.github.com/users/tonybaines/received_events",
                "type": "User",
                "user_view_type": "public",
                "site_admin": false
            },
            "html_url": "https://github.com/tonybaines/retrofitting-tests",
            "description": null,
            "fork": false,
            "url": "https://api.github.com/repos/tonybaines/retrofitting-tests",
            "forks_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/forks",
            "keys_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/keys{/key_id}",
            "collaborators_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/collaborators{/collaborator}",
            "teams_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/teams",
            "hooks_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/hooks",
            "issue_events_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/issues/events{/number}",
            "events_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/events",
            "assignees_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/assignees{/user}",
            "branches_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/branches{/branch}",
            "tags_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/tags",
            "blobs_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/git/blobs{/sha}",
            "git_tags_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/git/tags{/sha}",
            "git_refs_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/git/refs{/sha}",
            "trees_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/git/trees{/sha}",
            "statuses_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/statuses/{sha}",
            "languages_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/languages",
            "stargazers_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/stargazers",
            "contributors_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/contributors",
            "subscribers_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/subscribers",
            "subscription_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/subscription",
            "commits_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/commits{/sha}",
            "git_commits_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/git/commits{/sha}",
            "comments_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/comments{/number}",
            "issue_comment_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/issues/comments{/number}",
            "contents_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/contents/{+path}",
            "compare_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/compare/{base}...{head}",
            "merges_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/merges",
            "archive_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/{archive_format}{/ref}",
            "downloads_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/downloads",
            "issues_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/issues{/number}",
            "pulls_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/pulls{/number}",
            "milestones_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/milestones{/number}",
            "notifications_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/notifications{?since,all,participating}",
            "labels_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/labels{/name}",
            "releases_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/releases{/id}",
            "deployments_url": "https://api.github.com/repos/tonybaines/retrofitting-tests/deployments",
            "created_at": "2010-11-30T21:37:29Z",
            "updated_at": "2013-10-22T22:59:07Z",
            "pushed_at": "2011-09-12T08:23:15Z",
            "git_url": "git://github.com/tonybaines/retrofitting-tests.git",
            "ssh_url": "git@github.com:tonybaines/retrofitting-tests.git",
            "clone_url": "https://github.com/tonybaines/retrofitting-tests.git",
            "svn_url": "https://github.com/tonybaines/retrofitting-tests",
            "homepage": null,
            "size": 7184,
            "stargazers_count": 1,
            "watchers_count": 1,
            "language": "Java",
            "has_issues": true,
            "has_projects": true,
            "has_downloads": true,
            "has_wiki": true,
            "has_pages": false,
            "has_discussions": false,
            "forks_count": 0,
            "mirror_url": null,
            "archived": false,
            "disabled": false,
            "open_issues_count": 0,
            "license": null,
            "allow_forking": true,
            "is_template": false,
            "web_commit_signoff_required": false,
            "topics": [],
            "visibility": "public",
            "forks": 0,
            "open_issues": 0,
            "watchers": 1,
            "default_branch": "master",
            "permissions": {
                "admin": false,
                "maintain": false,
                "push": false,
                "triage": false,
                "pull": true
            },
            "score": 1.0
        },
        {
            "id": 8997285,
            "node_id": "MDEwOlJlcG9zaXRvcnk4OTk3Mjg1",
            "name": "as3-retrofit-dci",
            "full_name": "kod3r/as3-retrofit-dci",
            "private": false,
            "owner": {
                "login": "kod3r",
                "id": 656362,
                "node_id": "MDQ6VXNlcjY1NjM2Mg==",
                "avatar_url": "https://avatars.githubusercontent.com/u/656362?v=4",
                "gravatar_id": "",
                "url": "https://api.github.com/users/kod3r",
                "html_url": "https://github.com/kod3r",
                "followers_url": "https://api.github.com/users/kod3r/followers",
                "following_url": "https://api.github.com/users/kod3r/following{/other_user}",
                "gists_url": "https://api.github.com/users/kod3r/gists{/gist_id}",
                "starred_url": "https://api.github.com/users/kod3r/starred{/owner}{/repo}",
                "subscriptions_url": "https://api.github.com/users/kod3r/subscriptions",
                "organizations_url": "https://api.github.com/users/kod3r/orgs",
                "repos_url": "https://api.github.com/users/kod3r/repos",
                "events_url": "https://api.github.com/users/kod3r/events{/privacy}",
                "received_events_url": "https://api.github.com/users/kod3r/received_events",
                "type": "User",
                "user_view_type": "public",
                "site_admin": false
            },
            "html_url": "https://github.com/kod3r/as3-retrofit-dci",
            "description": "Playground for some DCI (Data-Context-Interaction) experiments (project based on  brianheylin's as3-retrofit).",
            "fork": false,
            "url": "https://api.github.com/repos/kod3r/as3-retrofit-dci",
            "forks_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/forks",
            "keys_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/keys{/key_id}",
            "collaborators_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/collaborators{/collaborator}",
            "teams_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/teams",
            "hooks_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/hooks",
            "issue_events_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/issues/events{/number}",
            "events_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/events",
            "assignees_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/assignees{/user}",
            "branches_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/branches{/branch}",
            "tags_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/tags",
            "blobs_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/git/blobs{/sha}",
            "git_tags_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/git/tags{/sha}",
            "git_refs_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/git/refs{/sha}",
            "trees_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/git/trees{/sha}",
            "statuses_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/statuses/{sha}",
            "languages_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/languages",
            "stargazers_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/stargazers",
            "contributors_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/contributors",
            "subscribers_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/subscribers",
            "subscription_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/subscription",
            "commits_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/commits{/sha}",
            "git_commits_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/git/commits{/sha}",
            "comments_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/comments{/number}",
            "issue_comment_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/issues/comments{/number}",
            "contents_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/contents/{+path}",
            "compare_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/compare/{base}...{head}",
            "merges_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/merges",
            "archive_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/{archive_format}{/ref}",
            "downloads_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/downloads",
            "issues_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/issues{/number}",
            "pulls_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/pulls{/number}",
            "milestones_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/milestones{/number}",
            "notifications_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/notifications{?since,all,participating}",
            "labels_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/labels{/name}",
            "releases_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/releases{/id}",
            "deployments_url": "https://api.github.com/repos/kod3r/as3-retrofit-dci/deployments",
            "created_at": "2013-03-25T02:30:47Z",
            "updated_at": "2017-10-11T06:13:19Z",
            "pushed_at": "2011-10-29T18:07:24Z",
            "git_url": "git://github.com/kod3r/as3-retrofit-dci.git",
            "ssh_url": "git@github.com:kod3r/as3-retrofit-dci.git",
            "clone_url": "https://github.com/kod3r/as3-retrofit-dci.git",
            "svn_url": "https://github.com/kod3r/as3-retrofit-dci",
            "homepage": "",
            "size": 3696,
            "stargazers_count": 0,
            "watchers_count": 0,
            "language": "ActionScript",
            "has_issues": false,
            "has_projects": true,
            "has_downloads": true,
            "has_wiki": true,
            "has_pages": false,
            "has_discussions": false,
            "forks_count": 0,
            "mirror_url": null,
            "archived": false,
            "disabled": false,
            "open_issues_count": 0,
            "license": null,
            "allow_forking": true,
            "is_template": false,
            "web_commit_signoff_required": false,
            "topics": [],
            "visibility": "public",
            "forks": 0,
            "open_issues": 0,
            "watchers": 0,
            "default_branch": "master",
            "permissions": {
                "admin": false,
                "maintain": false,
                "push": false,
                "triage": false,
                "pull": true
            },
            "score": 1.0
        }
    ]
}
  ''';
}
