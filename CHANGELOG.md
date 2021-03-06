# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## Brimir 0.8.0 (2019-05-14)
### Added
- Ability to order tickets by priority. Contributed by @EdwardJFox and @antnettleship
- Ability to self-assign a ticket at the click of a button. Contributed by @EdwardJFox
- Ability to import .eml files for mails sent to wrong email address. Contributed by @fiedl.
- Ability to rename tickets. Contributed by @fiedl.
- Canned replies. Contributed by @svoop.
- Support for incoming mail from Mailgun. Contributed by @svoop.<br>:warning: If you are already using the `post-mail` script, you must update the `aliases` file of your MTA according to the example mentioned in the README!
- Support for disabling thumbnail generation. Contributed by @jamgregory

### Changed
- Testing framework migrated from Minitest to RSpec. Contributed by @EdwardJFox and @neb2000
- Addition of E2E testing with Selenium and Capybara. Contributed by @antnettleship and @neb2000
- Better error messages when an invalid input is given for non-signed in users. Contributed by @mickael-kerjean.
- Better coverage for ticket creation, now covering situations with captcha. Contributed by @git-jls.
- Only add "New reply: " to subject of agent mails.
- Return-Path is now filled with Tenant from address, to capture bounce mails when using aliases.

### Fixed
- Unread ticket status resulted in a big performance regression #345.

### Security
- Rails bump to 5.1.6.2. Contributed by @antnettleship
- jQuery bump to 2.2.4 from 1.x. This is the highest supported by Foundation5. Contributed by @antnettleship


## Brimir 0.7.3 (2016-12-19)
### Added
- Rule management interface has been improved, making it understandable for more users.
- Tabindex for a better user experience when filling out ticket forms. Contributed by @git-jls.
- Allows adding rules to filter on cc and actual to addresses. Contributed by @git-jls.
- Unread ticket status, so the user can differentiate read/unread tickets in the inbox. Contributed by @git-jls.
- User setting to turn off notifications during work or off-duty. Contributed by @git-jls.
- Dutch and English translations for look and feel section settings page. Contributed by @git-jls.

### Changed
- Better error messages when an invalid input is given for non-signed in users. Contributed by @mickael-kerjean.
- Better coverage for ticket creation, now covering situations with captcha. Contributed by @git-jls.
- Removed unused code. Contributed by @git-jls

### Fixed
- Fixed issue with tickets missing a message_id. Contributed by @git-jls.
- Disable captcha check for incoming email posts. Contributed by @git-jls.
- Fixed signature and logic around recaptcha. Contributed by @git-jls.
- Fixed issue for non signed in users not able to create tickets from the web gui when the captcha is disabled. Contributed by @git-jls.
- Fixed issue with zone not being properly taken into account if schedule is set and ticket is created. by @git-jls.
- Fixed issue with save_with_label method being called on a reply. Contributed by @git-jls.
- Fixed issue with tickets not getting deleted from the trash. Contributed by @git-jls

## Brimir 0.7.2 (2016-11-11)
### Added
- Optional notification of customers when ticket is assigned or status is changed. Contributed by @fiedl.
- Optional captcha for non-signed in ticket creation. Contributed by @git-jls.
- Optional emails and templates when a user account has been created and when a ticket has been received. Contributed by @git-jls.
- Optional replaced tinymce with trix (WYSIWYG editor). Contributed by @git-jls.

### Fixed
- Posting an empty reply will no longer result in an error.


## Brimir 0.7.1 (2016-06-10)
### Added
- Norsk translation by @viddypiddy.

### Fixed
- Notification mails of new tickets now always have correct message-id headers.
- Inline images are now displayed correctly again.

## Brimir 0.7.0 (2016-04-15)
### Added
- Automatic refresh of inbox when browser tab receives focus again.
- Internal notes can now be added to tickets.
- Right to left support for Farsi.
- Mobile menu fixes from @sapslaj.
- Ticket creation and user creation api by @bsylvain.
- Turkish translation by @yildizib.
- Option to disable default reply to all agents for first reply by.
- Merge ticket feature by @fiedl.
- Possibility to assign and set priority on ticket create form by @fshahy.

### Changed
- Do not notify other clients silently, when a client replies via email by @fiedl, see #265.

### Fixed
- Ticket detail pages of tickets with draft replies could generate errors after saving a draft.
- Replies can now be seen again by other agents when ticket is locked.
- Attachments sent by Apple Mail which are not embedded now show up as real attachments.
- HTML comments are now stripped from all HTML mail content.

## Brimir 0.6.3 (2015-11-06)
### Added
- Incoming email address selection on new ticket screen. Allowing rules to be applied for manually created tickets.
- To/cc address now becomes visible as notified users for all incoming mails.
- User preference to disable quoting of original message in the reply form.

### Changed
- Signatures are added to new tickets again.
- Realigned sign in view.
- Customers can only see replies they were notified of, allowing replies to be used as internal communication between agents.
- Reply notifications are now sent to the same users as the last reply by default.

### Removed
- The undocumented Brimir plugin to embed a new ticket form was removed.

### Fixed
- Ordering of replies is now always chronologically, even when drafts were saved.
- Attachments saved with a draft will not cause problems anymore.
- Non-multi part HTML mails are now correctly recognized.
- Outgoing plain text notifications are now wrapped at 72 characters as well.

## Brimir 0.6.2 (2015-10-23)
### Changed
- Lines of plain text tickets or replies are now wrapped at 72 characters.
- The rule action to notify users now creates users if they don't exist yet.

### Fixed
- French translation was improved by @sapk.

## Brimir 0.6.1 (2015-10-02)
### Changed
- A number of missing German translations were contributed by Alexander Jackson.
- CC and BCC addresses are now recognized as incoming address as well.

### Fixed
- Prevented errors when using draft sharing.

## Brimir 0.6.0 (2015-09-18)
### Added
- Russian translation was improved by @mpakus.
- Google Account single-sign on support was contributed by @FloHin.
- LDAP authentication was contributed by @alisnic.
- Arabic translation contributed by @modsaid.
- Brazillian Portugues translation was drasitcally improved by @DadoCe.
- A complety new design was implemented.
- User avatar support was contributed by @fiedl.
- Ability to filter on incoming email address. Note that this only works for addresses that are first added and verified as outgoing addresses.
- Agents can now also be limited to certain labels, which lets them only manage tickets and replies with those labels.
- If a ticket detail page is opened by an agent, it will be locked to avoid multiple agents from replying to the same ticket. Tickets are unlocked five minutes after the agent leaves the ticket detail page or by clicking the link on ticket detail by not limited agents.
- The status of a ticket can now be changed directly when adding a reply.
- Nice name outgoing email address support, i.e. `From: Test <test@test.nl>` instead of just the email address.
- Opt-in other users in conversations.
- Filter users by type and/or email.
- It is now possible to inline-edit the label name.
- Per user configuration option for plain text replies.
- A global configuration page was added which can be used to set default locale and time zone.
- Added "equal to" as option for rule matching.
- Original email messages are now stored and available from the ticket detail page. This can be helpfull if Brimir fails to show some HTML mails correctly or to resolve possible bugs in Brimir.
- Farsi/Persian translation contributed by @hadifarnoud.
- Support for inline email attachments has been added. It will only work for newly received messages.
- Filter by user from tickets index. Contributed by @fiedl.
- It is now possible to save drafts. They can be shared with other agents using a global configuration option.
- Users without tickets and replies can now be removed.

### Changed
- The outgoing email address of replies will now be the same as the original incoming email addresses when it was configured correctly as an outgoing email address. The agent can choose a different address when replying.
- The `script/post-mail` script now returns correct exit codes to the local delivery command of Postfix. This allows Postfix to bounce an email when the ticket could not be created.
- Ordering of tickets is now based on last modified time. Tickets with new replies will show up on top.
- Filter values are now case insensitive.

### Deprecated
- Support for Ruby 1.9 has been dropped. We're not automatically testing it anymore.

### Removed
- Database migrations from Markdown to HTML and required gems.

### Fixed
- More robust incoming email support.
- The content of inline HTML style tags is now correctly removed as well.
- Adding of labels to tickets updates the interface correctly again, this was broken since the redesign.
- HTML entities are now correctly escaped and unescaped in ticket and reply content.
