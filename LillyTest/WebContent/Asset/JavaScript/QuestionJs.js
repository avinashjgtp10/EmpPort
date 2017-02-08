var Question = [
		'List the applications supported.',
		'Which tool is used for incident management in this project?',
		'What is the name of the Service Now queue for Global Mobility Support?',
		'Name the onsite counterparts and Lilly Sponsor.',
		'What is the coverage of our support?',
		'Define LifeCycle of ServiceNow in details',
		'Where do we publish iBinder site? Where are the details of the site which is to be Published?',
		'Whose approvals do you need to publish the site?',
		'What is the difference between the published iBinder URL and the SharePoint URL?',
		'Why do you need rights on the iBinder SharePoint site? What rights do you need?',
		'What is are known issues relating the document library of the iBinder site?',
		'What is iFolio Application used for?',
		'What are the pre-requisites for using iFolio?',
		'What is LillyLogin Used for?',
		'What do you do when you purge keychain?',
		'Why do you need to Purge Keychain?',
		'Which application is a must for logging into iApproval and iApprove time?',
		'What information do you see regarding the pending work items on the iApproval inbox screen?',
		'iApproval and iApprove-time interface with which application in the backend?',
		'What is iApprove Time used for?',
		'Can the user create any document outside his assigned folder? Why?',
		'Can the user share any data through links in box.com? Why?',
		'What is Box Sync?',
		'Which credentials the user needs to login to box?',
		'Lilly allows the users to change their primary mail ids. How will that affect their access to box.com?',
		'What  is the iEvent site URL like?',
		'Is there any way for the user who is unable to access the invited event from the event publisher. How we can proceed in this case?',
		'How to provide Publisher access from iEvent? Is there any approval needed from anyone.',
		'Name all the applications on iPad though which we can open Vmware?',
		'Name all the zones of VMware?',
		'User is getting blank screen while opeining the mylilly application. What will be the first action we need to take? ',
		'What is the process to support the Non-English Users',
		'How we can send the incidents back to SvD.', 'ExamOver' ];

var i = 0;
var search = document.getElementById('search');
var val1 = document.getElementById('val1');
var TextClear = document.getElementById('ans');

search.value = Question[i];
function counter() {
	search.textContent = Question[0];
	i = i + 1;
	i = i % Question.length;
	search.value = Question[i];
	TextClear.value = "";
	console.log(Question[i]);
}
