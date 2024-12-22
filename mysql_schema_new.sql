CREATE TABLE IF NOT EXISTS `Shep_Appointment` (
  `appointmentPatients` JSON DEFAULT NULL COMMENT 'Clients patients listed on the appointment.',
  `appointmentStatus` TEXT DEFAULT NULL,
  `appointmentStatusId` TEXT DEFAULT NULL COMMENT 'Appointment status identifier.',
  `appointmentType` TEXT DEFAULT NULL,
  `appointmentTypeId` TEXT DEFAULT NULL COMMENT 'Appointment type identifier, if the appointment type identifier is null then the appointment is a  block off appointment for the provider.',
  `client` TEXT DEFAULT NULL,
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Created by user identifier.',
  `endDate` DATETIME DEFAULT NULL COMMENT 'Appointments end date and time.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this appointment is deleted.',
  `providerId` TEXT DEFAULT NULL COMMENT 'Provider identifier.',
  `recurringConfiguration` TEXT DEFAULT NULL,
  `recurringConfigurationId` TEXT DEFAULT NULL COMMENT 'Recurring configuration identifier, only exists for recurring appointments.',
  `sendEmailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this appointment sends email notifications.',
  `sendSmsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this appointment sends SMS notifications.',
  `startDate` DATETIME DEFAULT NULL COMMENT 'Appointments start date and time.',
  `visitReason` TEXT DEFAULT NULL COMMENT 'Reason for visit.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Appointment REST model.';



CREATE TABLE IF NOT EXISTS `Shep_AppointmentPatient` (
  `patient` TEXT DEFAULT NULL,
  `patientId` TEXT DEFAULT NULL COMMENT 'Patient identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AppointmentPatient REST model';



CREATE TABLE IF NOT EXISTS `Shep_AppointmentStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AppointmentStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_AppointmentType` (
  `color` TEXT DEFAULT NULL COMMENT 'Color.',
  `duration` INT DEFAULT NULL COMMENT 'The duration.',
  `name` TEXT DEFAULT NULL COMMENT 'The name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AppointmentType REST model.';



CREATE TABLE IF NOT EXISTS `Shep_AuthorizedAgent` (
  `firstName` TEXT DEFAULT NULL COMMENT 'The authorized agents first name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'The authorized agents last name.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'The authorized agents phone number.',
  `role` TEXT DEFAULT NULL COMMENT 'The authorized agents role.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AuthorizedAgent REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Breed` (
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this breed is deleted.',
  `isLegacy` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this breed is legacy.',
  `species` TEXT DEFAULT NULL,
  `speciesId` TEXT DEFAULT NULL COMMENT 'Species identifier.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Breed REST model';



CREATE TABLE IF NOT EXISTS `Shep_Client` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Free-text field of additional info for the client.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Important info for the client, e.g. Difficult to work with',
  `authorizedAgents` JSON DEFAULT NULL COMMENT 'The related AuthorizedAgent entities.',
  `clientCoOwner` TEXT DEFAULT NULL,
  `clientInfo` TEXT DEFAULT NULL,
  `clientPhones` JSON DEFAULT NULL COMMENT 'The related ClientPhone entities.',
  `clientStatus` TEXT DEFAULT NULL,
  `clientStatusId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ClientStatus entity.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client is deleted.',
  `email` TEXT DEFAULT NULL COMMENT 'The clients email.',
  `emailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client accepts Email notifications.',
  `firstName` TEXT DEFAULT NULL COMMENT 'The clients first name.',
  `identifier` TEXT DEFAULT NULL COMMENT 'The clients short unique identifier inside the clinic. Clients from different clinics can have the same value.',
  `isSubscribedToNotifications` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client is subscribed to notifications. If false, no email or SMS  notifications should be sent to the client.',
  `isTaxExempt` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client is exempt from taxes.',
  `lastName` TEXT DEFAULT NULL COMMENT 'The clients last name.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'The clients legacy identifier from a previous PIMS.',
  `smsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client accepts SMS notifications.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Client REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientCoOwner` (
  `clientCoOwnerPhones` JSON DEFAULT NULL COMMENT 'The related ClientCoOwnerPhone entities.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Client entity. Also serves as the primary key for the co-owner.',
  `email` TEXT DEFAULT NULL COMMENT 'The co-owners email address.',
  `emailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the co-owner accepts Email notifications.',
  `firstName` TEXT DEFAULT NULL COMMENT 'The co-owners first name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'The co-owners last name.',
  `smsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the co-owner accepts SMS notifications.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Base REST model for client co owner.';



CREATE TABLE IF NOT EXISTS `Shep_ClientCoOwnerPhone` (
  `clientCoOwnerId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ClientCoOwner entity.',
  `country` TEXT DEFAULT NULL,
  `countryId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the related Country entity.',
  `isPrimary` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this instance is the primary phone number for the co-owner.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'The phone number.',
  `phoneType` TEXT DEFAULT NULL,
  `phoneTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related PhoneType entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientCoOwnerPhone REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClientInfo` (
  `address` TEXT DEFAULT NULL COMMENT 'Client address.',
  `address2` TEXT DEFAULT NULL COMMENT 'Client address2.',
  `city` TEXT DEFAULT NULL COMMENT 'Client city.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Client entity. Also serves as the primary key for the client info.',
  `state` TEXT DEFAULT NULL COMMENT 'Client state.',
  `zipCode` TEXT DEFAULT NULL COMMENT 'Client zip code.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientInfo REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClientPhone` (
  `country` TEXT DEFAULT NULL,
  `countryId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Country entity.',
  `isPrimary` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this instance is the primary phone number for the client.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'The phone number.',
  `phoneType` TEXT DEFAULT NULL,
  `phoneTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related PhoneType entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientPhone REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClientStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_Country` (
  `phoneCode` TEXT DEFAULT NULL COMMENT 'The countrys phone code (e.g. 1 for the US)',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Country REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Patient` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Additional text.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Alerts.',
  `breed` TEXT DEFAULT NULL,
  `breedId` TEXT DEFAULT NULL COMMENT 'Breed identifier.',
  `clients` JSON DEFAULT NULL COMMENT 'Patients owner(s).',
  `color` TEXT DEFAULT NULL COMMENT 'Color.',
  `dateDeceased` DATETIME DEFAULT NULL COMMENT 'Date deceased.',
  `dateOfBirth` DATETIME DEFAULT NULL COMMENT 'Date of birth.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether patient is deleted.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'Legacy identifier.',
  `microchipNumber` TEXT DEFAULT NULL COMMENT 'Microchip number.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name property of the Patient.',
  `patientCPRStatus` TEXT DEFAULT NULL,
  `patientCPRStatusNote` TEXT DEFAULT NULL COMMENT 'Patient CPR status note.',
  `patientCprstatusId` TEXT DEFAULT NULL COMMENT 'Patient CPR status identifier.',
  `patientSex` TEXT DEFAULT NULL,
  `patientStatus` TEXT DEFAULT NULL,
  `rabiesTag` TEXT DEFAULT NULL COMMENT 'Rabies tag.',
  `sexId` TEXT DEFAULT NULL COMMENT 'Sex identifier.',
  `statusId` TEXT DEFAULT NULL COMMENT 'Status identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient REST model';



CREATE TABLE IF NOT EXISTS `Shep_PatientCPRStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientCPRStatus RESTModel';



CREATE TABLE IF NOT EXISTS `Shep_PatientSex` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientSex RESTModel';



CREATE TABLE IF NOT EXISTS `Shep_PatientStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_PhoneType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PhoneType RESTModel';



CREATE TABLE IF NOT EXISTS `Shep_RecurringConfiguration` (
  `endDate` DATETIME DEFAULT NULL COMMENT 'End Date.',
  `endsAfter` INT DEFAULT NULL COMMENT 'Number of occurences.',
  `repeatingDaysCode` INT DEFAULT NULL COMMENT 'The repeating days code.',
  `repeatingPeriod` TEXT DEFAULT NULL,
  `repeatingPeriodId` TEXT DEFAULT NULL COMMENT 'Repeating period identifier.',
  `startDate` DATETIME DEFAULT NULL COMMENT 'Start date and time.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RecurringConfiguration REST model.';



CREATE TABLE IF NOT EXISTS `Shep_RepeatingPeriod` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RecurringConfiguration REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Species` (
  `isLegacy` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this species is legacy.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Species REST model';



CREATE TABLE IF NOT EXISTS `Shep_Appointment` (
  `appointmentStatusId` TEXT DEFAULT NULL COMMENT 'Appointment status identifier.',
  `appointmentTypeId` TEXT DEFAULT NULL COMMENT 'Appointment type identifier, if the appointment type identifier is null then the appointment is a  block off appointment for the provider.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Created by user identifier.',
  `endDate` DATETIME DEFAULT NULL COMMENT 'Appointments end date and time.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this appointment is deleted.',
  `providerId` TEXT DEFAULT NULL COMMENT 'Provider identifier.',
  `recurringConfigurationId` TEXT DEFAULT NULL COMMENT 'Recurring configuration identifier, only exists for recurring appointments.',
  `sendEmailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this appointment sends email notifications.',
  `sendSmsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this appointment sends SMS notifications.',
  `startDate` DATETIME DEFAULT NULL COMMENT 'Appointments start date and time.',
  `visitReason` TEXT DEFAULT NULL COMMENT 'Reason for visit.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Appointment REST model.';



CREATE TABLE IF NOT EXISTS `Shep_AppointmentPatient` (
  `appointment` TEXT DEFAULT NULL,
  `appointmentId` TEXT DEFAULT NULL COMMENT 'The appointment identifier.',
  `ignorePatient` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether a client and/or a patient is inactive and therefore should be ignored.',
  `patient` TEXT DEFAULT NULL,
  `patientId` TEXT DEFAULT NULL COMMENT 'The patient identifier.',
  `soap` TEXT DEFAULT NULL,
  `soapId` TEXT DEFAULT NULL COMMENT 'The SOAP identifier. If not related to a soap it will return null.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Appointment Patient REST model';



CREATE TABLE IF NOT EXISTS `Shep_Patient` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Additional text.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Alerts.',
  `breedId` TEXT DEFAULT NULL COMMENT 'Breed identifier.',
  `color` TEXT DEFAULT NULL COMMENT 'Color.',
  `dateDeceased` DATETIME DEFAULT NULL COMMENT 'Date deceased.',
  `dateOfBirth` DATETIME DEFAULT NULL COMMENT 'Date of birth.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether patient is deleted.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'Legacy identifier.',
  `microchipNumber` TEXT DEFAULT NULL COMMENT 'Microchip number.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name property of the Patient.',
  `patientCPRStatusNote` TEXT DEFAULT NULL COMMENT 'Patient CPR status note.',
  `patientCprstatusId` TEXT DEFAULT NULL COMMENT 'Patient CPR status identifier.',
  `rabiesTag` TEXT DEFAULT NULL COMMENT 'Rabies tag.',
  `sexId` TEXT DEFAULT NULL COMMENT 'Sex identifier.',
  `statusId` TEXT DEFAULT NULL COMMENT 'Status identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Soap` (
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Owner identifier.',
  `dateCheckedIn` DATETIME DEFAULT NULL COMMENT 'Date checked in.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this soap is deleted.',
  `invoiceId` TEXT DEFAULT NULL COMMENT 'Invoice identifier.',
  `locationId` TEXT DEFAULT NULL COMMENT 'Location identifier.',
  `patientId` TEXT DEFAULT NULL COMMENT 'Patient id.',
  `soapStatusId` TEXT DEFAULT NULL COMMENT 'SOAP status identifier.',
  `supervisingDoctorId` TEXT DEFAULT NULL COMMENT 'Supervising doctor identifier.',
  `title` TEXT DEFAULT NULL COMMENT 'Soap title.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_AppointmentStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AppointmentStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_AppointmentType` (
  `color` TEXT DEFAULT NULL COMMENT 'Hexadecimal string representing the color associated with the appointment type.',
  `duration` INT DEFAULT NULL COMMENT 'The default duration (in minutes) of the appointment type.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this instance is deleted.',
  `name` TEXT DEFAULT NULL COMMENT 'The appointment type name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AppointmentType REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Breed` (
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this instance is deleted.',
  `isLegacy` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this breed is legacy.',
  `species` TEXT DEFAULT NULL,
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Breed REST model';



CREATE TABLE IF NOT EXISTS `Shep_Species` (
  `isLegacy` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this species is legacy.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Species REST model';



CREATE TABLE IF NOT EXISTS `Shep_CapillaryRefillTime` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Capillary Refill Time REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientBalance` (
  `clientClinicAccountId` TEXT DEFAULT NULL COMMENT 'Id value for client clinic account.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `dateCreated` DATETIME DEFAULT NULL COMMENT 'Not implemented for filtering and sorting.',
  `dateUpdated` DATETIME DEFAULT NULL COMMENT 'Signifies the date when Client Clinic Balance was last updated.',
  `id` TEXT DEFAULT NULL COMMENT 'Not implemented for filtering and sorting.',
  `pendingCreditBalance` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Client Credit Balance, signifies the amount that the clinic owes to the client.',
  `pendingOutstandingBalance` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Client Outstanding Balance, signifies the amount that the client owes to the clinic.',
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientBalance REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientClinicAccount` (
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Client indentifier',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientClinicAccount REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClientClinicBalance` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount for client balance.',
  `clientClinicAccount` TEXT DEFAULT NULL,
  `clientClinicAccountId` TEXT DEFAULT NULL COMMENT 'Id value for client clinic account.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `json` TEXT DEFAULT NULL COMMENT 'JSON contains information for migrated data such as oldId and bitwerxPracticeId.',
  `payment` TEXT DEFAULT NULL,
  `paymentId` TEXT DEFAULT NULL COMMENT 'The value of the payment id to which the clinic balance belongs.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientClinicBalance REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientClinicCreditBalanceAging` (
  `clientId` TEXT DEFAULT NULL COMMENT 'Gets or sets the Client identifier',
  `creditBalance` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets clients Credit Balance',
  `current` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The Credit balance changes in the last 30 days from the ToDate. If a ToDate is not set a default will be  used which is The current timestamp in UTC.',
  `open120` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The Credit balance changes made more than 120 days ago from the ToDate. If a ToDate is not set a defualt  will be used which is The current timestamp in UTC.',
  `open30` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The Credit balance changes made more than 30 and less then 60 days ago from the ToDate. If a ToDate is  not set a default will be used which is The current timestamp in UTC.',
  `open60` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The Credit balance changes made more than 60 and less then 90 days ago from the ToDate. If a ToDate is  not set a default will be used which is The current timestamp in UTC.',
  `open90` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The Credit balance changes made more than 90 and less then 120 days ago from the ToDate. If a ToDate is  not set a default will be used which is The current timestamp in UTC.',
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientCreditBalance REST Model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientClinicCreditBalanceAgingFil` (
  `toDate` DATETIME DEFAULT NULL COMMENT 'Time which overlaps with FromDate - ToDate range. If not set, The current timestamp in UTC will be used.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientClinicCreditBalanceAging Filter REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClientClinicOutstandingBalanceAgi` (
  `clientId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the Client for which the outstanding balance is returned for.',
  `credit` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets Clients Credit Balance',
  `current` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Outstanding balance changes in the last 30 days from the ToDate. If a ToDate is not set a default will  be used which is The current timestamp in UTC.',
  `open120` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Outstanding balance changes made more than 120 days ago from the ToDate. If a ToDate is not set a  default will be used which is The current timestamp in UTC.',
  `open30` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Outstanding balance changes made more than 30 and less then 60 days ago from the ToDate. If a ToDate is  not set a default will be used which is The current timestamp in UTC.',
  `open60` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Outstanding balance changes made more than 60 and less then 90 days ago from the ToDate. If a ToDate is  not set a default will be used which is The current timestamp in UTC.',
  `open90` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Outstanding balance changes made more than 90 and less then 120 days ago from the ToDate. If a ToDate is  not set a default will be used which is The current timestamp in UTC.',
  `outstandingBalance` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The OutstandingBalance represents the total amount of money owed by the client. Its calculated by  adding up all invoice item amounts and subtracting any payments already made towards those invoice items.',
  `totalDue` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The TotalDue is determined by totaling unpaid invoices and then adjusting for pending credits,  resulting in the net amount owed by the client. If total due is in negative this signifies the overpaid  amount which is shown as clients credt balance.',
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The Client Clinic Outstanding Balance Aging REST Model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientClinicOutstandingBalanceAgi` (
  `toDate` DATETIME DEFAULT NULL COMMENT 'Time which overlaps with FromDate - ToDate range. If not set, The current timestamp in UTC will be used.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Outstanding Balance aging filter REST model';



CREATE TABLE IF NOT EXISTS `Shep_Payment` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount for this payment.',
  `authCode` TEXT DEFAULT NULL COMMENT 'Authentication code of this payment.',
  `cardType` TEXT DEFAULT NULL COMMENT 'Type of the card used for this payment.',
  `changeAmount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Change amount for this payment, only appplied for cash payments.',
  `clientBalanceAfterPayment` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Client balance after payment is processed.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `customerId` TEXT DEFAULT NULL COMMENT 'Customer identifier.',
  `dateVoided` DATETIME DEFAULT NULL COMMENT 'Date when the payment was voided.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether payment is deleted.',
  `lastDigits` TEXT DEFAULT NULL COMMENT 'Last 4 digits of the card used for this payment.',
  `note` TEXT DEFAULT NULL COMMENT 'The note, usually extra information regarding this payment.',
  `payToCreditBalance` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount to add to credit balance.',
  `paymentDate` DATETIME DEFAULT NULL COMMENT 'Date when the payment was processed.',
  `paymentMethodId` TEXT DEFAULT NULL COMMENT 'Payment method identifier.',
  `paymentStatusId` TEXT DEFAULT NULL COMMENT 'Payment status identifier.',
  `processedByUserId` TEXT DEFAULT NULL COMMENT 'Processed by user identifier.',
  `referenceNumber` TEXT DEFAULT NULL COMMENT 'Reference number.',
  `refundedPaymentId` TEXT DEFAULT NULL COMMENT 'Refunded payment identifier.',
  `returnedAmount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Returned amount.',
  `transactionId` TEXT DEFAULT NULL COMMENT 'Transaction identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Payment REST model';



CREATE TABLE IF NOT EXISTS `Shep_AuthorizedAgent` (
  `firstName` TEXT DEFAULT NULL COMMENT 'The authorized agents first name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'The authorized agents last name.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'The authorized agents phone number.',
  `role` TEXT DEFAULT NULL COMMENT 'The authorized agents role.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AuthorizedAgent REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Client` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Free-text field of additional info for the client.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Important info for the client, e.g. Difficult to work with',
  `authorizedAgents` JSON DEFAULT NULL COMMENT 'The related AuthorizedAgent entities.',
  `clientCoOwner` TEXT DEFAULT NULL,
  `clientInfo` TEXT DEFAULT NULL,
  `clientPhones` JSON DEFAULT NULL COMMENT 'The related ClientPhone entities.',
  `clientStatus` TEXT DEFAULT NULL,
  `clientStatusId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ClientStatus entity.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client is deleted.',
  `email` TEXT DEFAULT NULL COMMENT 'The clients email.',
  `emailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client accepts Email notifications.',
  `firstName` TEXT DEFAULT NULL COMMENT 'The clients first name.',
  `identifier` TEXT DEFAULT NULL COMMENT 'The clients short unique identifier inside the clinic. Clients from different clinics can have the same value.',
  `isSubscribedToNotifications` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client is subscribed to notifications. If false, no email or SMS  notifications should be sent to the client.',
  `isTaxExempt` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client is exempt from taxes.',
  `lastName` TEXT DEFAULT NULL COMMENT 'The clients last name.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'The clients legacy identifier from a previous PIMS.',
  `smsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client accepts SMS notifications.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Client REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientCoOwner` (
  `clientCoOwnerPhones` JSON DEFAULT NULL COMMENT 'The related ClientCoOwnerPhone entities.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Client entity. Also serves as the primary key for the co-owner.',
  `email` TEXT DEFAULT NULL COMMENT 'The co-owners email address.',
  `emailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the co-owner accepts Email notifications.',
  `firstName` TEXT DEFAULT NULL COMMENT 'The co-owners first name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'The co-owners last name.',
  `smsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the co-owner accepts SMS notifications.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Base REST model for client co owner.';



CREATE TABLE IF NOT EXISTS `Shep_ClientCoOwnerPhone` (
  `clientCoOwnerId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ClientCoOwner entity.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `country` TEXT DEFAULT NULL,
  `countryId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the related Country entity.',
  `isPrimary` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this instance is the primary phone number for the co-owner.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'The phone number.',
  `phoneType` TEXT DEFAULT NULL,
  `phoneTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related PhoneType entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientCoOwnerPhone REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClientInfo` (
  `address` TEXT DEFAULT NULL COMMENT 'Client address.',
  `address2` TEXT DEFAULT NULL COMMENT 'Client address2.',
  `city` TEXT DEFAULT NULL COMMENT 'Client city.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Client entity. Also serves as the primary key for the client info.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `id` TEXT DEFAULT NULL COMMENT 'Not implemented.',
  `state` TEXT DEFAULT NULL COMMENT 'Client state.',
  `zipCode` TEXT DEFAULT NULL COMMENT 'Client zip code.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientInfo REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClientPhone` (
  `country` TEXT DEFAULT NULL,
  `countryId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Country entity.',
  `isPrimary` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this instance is the primary phone number for the client.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'The phone number.',
  `phoneType` TEXT DEFAULT NULL,
  `phoneTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related PhoneType entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientPhone REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClientStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_Country` (
  `phoneCode` TEXT DEFAULT NULL COMMENT 'The countrys phone code (e.g. 1 for the US)',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Country REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PhoneType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PhoneType RESTModel';



CREATE TABLE IF NOT EXISTS `Shep_ClientInfo` (
  `address` TEXT DEFAULT NULL COMMENT 'Client address.',
  `address2` TEXT DEFAULT NULL COMMENT 'Client address2.',
  `city` TEXT DEFAULT NULL COMMENT 'Client city.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Client entity. Also serves as the primary key for the client info.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client info is deleted.',
  `state` TEXT DEFAULT NULL COMMENT 'Client state.',
  `zipCode` TEXT DEFAULT NULL COMMENT 'Client zip code.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientInfo REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientNote` (
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdByUser` TEXT DEFAULT NULL,
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Created by user id.',
  `editedByPav2User` TEXT DEFAULT NULL,
  `editedByUser` TEXT DEFAULT NULL,
  `editedByUserId` TEXT DEFAULT NULL COMMENT 'Edited by user identifier.',
  `isPinned` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this ClientNote is pinned.',
  `note` TEXT DEFAULT NULL COMMENT 'HTML representation of the Note.',
  `pav2User` TEXT DEFAULT NULL,
  `taggedUsersIds` JSON DEFAULT NULL COMMENT 'The list of the tagged users ids.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientNote REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `isDoctor` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this user is a doctor.',
  `prefix` TEXT DEFAULT NULL COMMENT 'Prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'Suffix.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User rest model.';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Client` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Free-text field of additional info for the client.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Important info for the client, e.g. Difficult to work with',
  `clientStatusId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ClientStatus entity.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client is deleted.',
  `email` TEXT DEFAULT NULL COMMENT 'The clients email.',
  `emailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client accepts Email notifications.',
  `firstName` TEXT DEFAULT NULL COMMENT 'The clients first name.',
  `identifier` TEXT DEFAULT NULL COMMENT 'The clients short unique identifier inside the clinic. Clients from different clinics can have the same value.',
  `isSubscribedToNotifications` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client is subscribed to notifications. If false, no email or SMS  notifications should be sent to the client.',
  `isTaxExempt` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client is exempt from taxes.',
  `lastName` TEXT DEFAULT NULL COMMENT 'The clients last name.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'The clients legacy identifier from a previous PIMS.',
  `smsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client accepts SMS notifications.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Client REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientPatient` (
  `client` TEXT DEFAULT NULL,
  `clientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Client entity.',
  `patient` TEXT DEFAULT NULL,
  `patientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Patient entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientPatient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Patient` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Additional text.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Alerts.',
  `breedId` TEXT DEFAULT NULL COMMENT 'Breed identifier.',
  `clients` JSON DEFAULT NULL COMMENT 'Patients owner(s).',
  `color` TEXT DEFAULT NULL COMMENT 'Color.',
  `dateDeceased` DATETIME DEFAULT NULL COMMENT 'Date deceased.',
  `dateOfBirth` DATETIME DEFAULT NULL COMMENT 'Date of birth.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether patient is deleted.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'Legacy identifier.',
  `microchipNumber` TEXT DEFAULT NULL COMMENT 'Microchip number.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name property of the Patient.',
  `patientCPRStatusNote` TEXT DEFAULT NULL COMMENT 'Patient CPR status note.',
  `patientCprstatusId` TEXT DEFAULT NULL COMMENT 'Patient CPR status identifier.',
  `rabiesTag` TEXT DEFAULT NULL COMMENT 'Rabies tag.',
  `sexId` TEXT DEFAULT NULL COMMENT 'Sex identifier.',
  `statusId` TEXT DEFAULT NULL COMMENT 'Status identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientPhone` (
  `clientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Client entity.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `country` TEXT DEFAULT NULL,
  `countryId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Country entity.',
  `isPrimary` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this instance is the primary phone number for the client.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'The phone number.',
  `phoneType` TEXT DEFAULT NULL,
  `phoneTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related PhoneType entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientPhone REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Country` (
  `phoneCode` TEXT DEFAULT NULL COMMENT 'The countrys phone code (e.g. 1 for the US).',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Country REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PhoneType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PhoneType REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Client` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Free-text field of additional info for the client.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Important info for the client, e.g. Difficult to work with',
  `clientStatusId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ClientStatus entity.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client is deleted.',
  `email` TEXT DEFAULT NULL COMMENT 'The clients email.',
  `emailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client accepts Email notifications.',
  `firstName` TEXT DEFAULT NULL COMMENT 'The clients first name.',
  `identifier` TEXT DEFAULT NULL COMMENT 'The clients short unique identifier inside the clinic. Clients from different clinics can have the same value.',
  `isSubscribedToNotifications` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client is subscribed to notifications. If false, no email or SMS  notifications should be sent to the client.',
  `isTaxExempt` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client is exempt from taxes.',
  `lastName` TEXT DEFAULT NULL COMMENT 'The clients last name.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'The clients legacy identifier from a previous PIMS.',
  `smsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the client accepts SMS notifications.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Client REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientReferralSource` (
  `client` TEXT DEFAULT NULL,
  `clientId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the Client.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'A Value indicating whether this instance is deleted.',
  `groupId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the Group.',
  `referralSource` TEXT DEFAULT NULL,
  `referralSourceId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the Referral Source.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Client Referral Source REST model';



CREATE TABLE IF NOT EXISTS `Shep_ReferralSource` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `description` TEXT DEFAULT NULL COMMENT 'The Description of the Referral Source.',
  `email` TEXT DEFAULT NULL COMMENT 'Referral sources Email address.',
  `groupId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the Group.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Sets the IsActive status for Referral Source. If active returns true, inactive returns false.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name of the Referral Source.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Referral Source REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Clinic` (
  `clinicAddress` TEXT DEFAULT NULL,
  `clinicSetting` TEXT DEFAULT NULL,
  `email` TEXT DEFAULT NULL COMMENT 'The clinics email address.',
  `fax` TEXT DEFAULT NULL COMMENT 'The clinics fax number.',
  `groupId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Group entity.',
  `info` TEXT DEFAULT NULL COMMENT 'The clinic additional information.',
  `name` TEXT DEFAULT NULL COMMENT 'The clinic name.',
  `phone` TEXT DEFAULT NULL COMMENT 'The clinics phone number.',
  `smsNumber` TEXT DEFAULT NULL COMMENT 'The clinics SMS number.',
  `taxRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Represents the tax rate applied to the clinics services.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Clinic REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClinicAddress` (
  `address1` TEXT DEFAULT NULL COMMENT 'The first address line.',
  `address2` TEXT DEFAULT NULL COMMENT 'The second address line',
  `city` TEXT DEFAULT NULL COMMENT 'The city.',
  `state` TEXT DEFAULT NULL COMMENT 'The state.',
  `zipCode` TEXT DEFAULT NULL COMMENT 'The zip code.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClinicAddress REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClinicSetting` (
  `country` TEXT DEFAULT NULL,
  `currency` TEXT DEFAULT NULL,
  `isInventoryEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether clinic has is inventory enabled.',
  `isInventoryTrackingEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether clinic has inventory tracking enabled.',
  `taxRateTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related TaxRateType entity.',
  `temperatureUnit` TEXT DEFAULT NULL,
  `timeZone` TEXT DEFAULT NULL COMMENT 'Gets or sets the time zone of the Clinic.',
  `website` TEXT DEFAULT NULL COMMENT 'Gets or sets the website.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Clinic Setting REST model, contains additional clinic info';



CREATE TABLE IF NOT EXISTS `Shep_Country` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Country REST model';



CREATE TABLE IF NOT EXISTS `Shep_Currency` (
  `code` TEXT DEFAULT NULL COMMENT 'Gets or sets the currency code.',
  `currencyName` TEXT DEFAULT NULL COMMENT 'Gets or sets the currency name.',
  `description` TEXT DEFAULT NULL COMMENT 'Gets or sets the description.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Currency REST model';



CREATE TABLE IF NOT EXISTS `Shep_TemperatureUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Temperature Unit REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClinicZipCodeTaxRate` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `taxRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The tax rate applied to the clinic based on its zip code.',
  `zipCode` TEXT DEFAULT NULL COMMENT 'The postal zip code associated with the clinics location.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClinicZipCodeTaxRate REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Conversation` (
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `clientPhoneNumber` TEXT DEFAULT NULL COMMENT 'Phone number.',
  `conversationStatus` TEXT DEFAULT NULL,
  `conversationStatusId` TEXT DEFAULT NULL COMMENT 'Conversation status identifier.',
  `lastMessage` TEXT DEFAULT NULL,
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Conversation REST model';



CREATE TABLE IF NOT EXISTS `Shep_ConversationStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ConversationStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_LastMessage` (
  `content` TEXT DEFAULT NULL COMMENT 'The Content.',
  `conversationId` TEXT DEFAULT NULL COMMENT 'Conversation identifier.',
  `isClientMessage` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this LastMessage is client message.',
  `messageStatus` TEXT DEFAULT NULL,
  `messageStatusId` TEXT DEFAULT NULL COMMENT 'Message status identifier.',
  `sentByUserFormatted` TEXT DEFAULT NULL COMMENT 'Full name of the user, including the prefix and suffix.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Message REST model.';



CREATE TABLE IF NOT EXISTS `Shep_MessageStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Message REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Country` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Country REST model';



CREATE TABLE IF NOT EXISTS `Shep_DiagnosisDischarg` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `description` TEXT DEFAULT NULL COMMENT 'The description.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is active.',
  `snomedDiagnosisDescription` TEXT DEFAULT NULL,
  `snomedDiagnosisDescriptionId` TEXT DEFAULT NULL COMMENT 'SNOMED diagnosis description identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Diagnosis Discharge Instruction REST model.';



CREATE TABLE IF NOT EXISTS `Shep_DiagnosisDischarg` (
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Filters by IsActive status. Defaults to null (fetches both Active and inactive entities).',
  `snomedDiagnosisDescriptionIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Snomed Diagnosis Description identifiers. Defaults to null.',
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Diagnosis Discharge Instruction Filter REST Model';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDesignation` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedDesignationType lookup REST model';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagnosis` (
  `snomedConceptId` TEXT DEFAULT NULL COMMENT 'SNOMED concept identifier.',
  `snomedSubsetType` TEXT DEFAULT NULL,
  `subsetTypeId` TEXT DEFAULT NULL COMMENT 'SNOMED Subset type id.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedDiagnosis REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagnosisDe` (
  `description` TEXT DEFAULT NULL COMMENT 'The description.',
  `designationTypeId` TEXT DEFAULT NULL COMMENT 'SNOMED designation type id.',
  `diagnosisId` TEXT DEFAULT NULL COMMENT 'The diagnosis id.',
  `dischargeInstructionDescription` TEXT DEFAULT NULL COMMENT 'The discharge instruction description.',
  `dischargeInstructionIsActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether [discharge instruction is active].',
  `snomedDescriptionId` TEXT DEFAULT NULL COMMENT 'SNOMED description identifier.',
  `snomedDesignationType` TEXT DEFAULT NULL,
  `snomedDiagnosis` TEXT DEFAULT NULL,
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedDescription REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SnomedSubsetType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedSubsetType lookup REST model';



CREATE TABLE IF NOT EXISTS `Shep_Group` (
  `countryId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Country entity.',
  `email` TEXT DEFAULT NULL COMMENT 'The email address associated with the group.',
  `hasPetAssureIntegration` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this instance has Pet Assure integration.  If this instance is a Pet Assure practice, it can automatically apply discounts for all Pet Assure members without manual validation.',
  `hasShepherdPayIntegration` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this instance has shepherd pay integration.',
  `isAutoResponseMessageEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether automatic response messaging is enabled for this instance.  An automatic message is sent when clients contact the clinic via SMS outside of working hours.',
  `isDemo` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this instance is demo clinic (for migration).',
  `isDemoChangedOnce` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether the IsDemo is changed once from true to false.',
  `isMultiSite` TINYINT(1) DEFAULT NULL COMMENT 'Indicates whether this instance is part of a multisite setup.',
  `mediaVaultEntryId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related MediaVaultEntry entity.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the group.',
  `paymentProcessorSetting` TEXT DEFAULT NULL,
  `petPortalSetting` TEXT DEFAULT NULL,
  `phone` TEXT DEFAULT NULL COMMENT 'Phone number of the group.',
  `shareClientDiscount` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share client discount data.',
  `shareClientsAndPatients` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share client and patient data.',
  `shareForms` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share form data.',
  `sharePaymentMethods` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share payment method data.',
  `sharePaymentProcessorSetting` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share payment processor setting data.',
  `sharePetPortal` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share pet portal data.',
  `shareProductPricing` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share product pricing data.',
  `shareProducts` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share product data.',
  `shareReferralSource` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share referral source data.',
  `shareTasks` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether all clinics in the group share task data.',
  `twilioA2PRegistrationStatus` TEXT DEFAULT NULL,
  `twilioA2PRegistrationStatusId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related TwilioA2PRegistrationStatus entity.',
  `twilioNumber` TEXT DEFAULT NULL COMMENT 'The twilio number.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Group REST model';



CREATE TABLE IF NOT EXISTS `Shep_PaymentProcessorSetting` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `isShepherdPayEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Indicates whether this instance has Shepherd Pay enabled.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PaymentProcessorSetting REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PetPortalSetting` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `directBookingEnableRegister` TINYINT(1) DEFAULT NULL COMMENT 'Indicates whether the direct booking registration feature is enabled.  Clients can use the pet portal to register new clients at the clinic.',
  `directBookingEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Indicates whether direct booking through the pet portal is enabled.  Clients can request appointments with the clinic via the pet portal.  If the DirectBookingWithoutApprovalEnabled flag is set to true, clients do not  need to wait for the clinics response to approve their requests.',
  `directBookingMaxDaysInAdvance` INT DEFAULT NULL COMMENT 'Number of maximum days in advance for direct booking.',
  `directBookingMinDaysInAdvance` INT DEFAULT NULL COMMENT 'Number of mimimum days in advance for direct booking.',
  `directBookingScheduleInterval` INT DEFAULT NULL COMMENT 'The interval period displayed for available slots on the pet portal.',
  `directBookingWithoutApprovalEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether pet portal direct booking without approval is enabled.  Clients can create appointments with the clinic without approval via the pet portal.',
  `petPortalAppointmentsEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Indicates whether appointments through the pet portal are enabled.',
  `petPortalColorSchemeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related PetPortalColorScheme entity.',
  `petPortalEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether pet portal is enabled.',
  `petPortalHeroId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related PetPortalHero entity.',
  `petPortalOnlinePaymentsEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether pet portal online payments is enabled.',
  `petPortalPrescriptionsEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether pet portal prescriptions is enabled.',
  `petPortalUrl` TEXT DEFAULT NULL COMMENT 'The pet portal URL.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PetPortalSetting REST model.';



CREATE TABLE IF NOT EXISTS `Shep_TwilioA2PRegistrationStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TwilioA2PRegistrationStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_InventoryProductLocation` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is active.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is deleted.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryProductLocation REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InventoryProductLocationFilte` (
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Filters by active/inactive.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Filters by deleted status.',
  `searchQuery` TEXT DEFAULT NULL COMMENT 'Filters by the location name and abbreviation.',
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryProductLocation Filter REST model';



CREATE TABLE IF NOT EXISTS `Shep_InventoryProductLocati` (
  `inventoryProductSettingId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related InventoryProductSetting entity.',
  `productLocationId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related InventoryProductLocation entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryProductLocationProduct REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InventoryProductLocati` (
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryProductLocationProductFilterModel Filter REST model';



CREATE TABLE IF NOT EXISTS `Shep_AdministrationPeriod` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Administration period REST model.';



CREATE TABLE IF NOT EXISTS `Shep_DispensingFee` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount of the dispensing fee.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `name` TEXT DEFAULT NULL COMMENT 'Product bundle Name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='DispensingFee REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InventoryProductLocatio` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryProductLocation REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InventoryProductLocatio` (
  `inventoryProductLocation` TEXT DEFAULT NULL,
  `productLocationId` TEXT DEFAULT NULL COMMENT 'Product location identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryProductLocationProduct REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InventoryProductSetting` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `cost` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Cost.',
  `initialCount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Initial count.',
  `inventoryProductLocationProducts` JSON DEFAULT NULL COMMENT 'Inventory product location products.',
  `inventoryVendor` TEXT DEFAULT NULL,
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this InventoryProductSetting is active.',
  `lastCostChange` DATETIME DEFAULT NULL COMMENT 'Last cost change.',
  `lastMarkupChange` DATETIME DEFAULT NULL COMMENT 'Last markup change.',
  `markup` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Markup.',
  `maxQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Maximum quantity.',
  `minQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Minimum quantity.',
  `name` TEXT DEFAULT NULL COMMENT 'Name.',
  `orderQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Order quantity.',
  `pricePerUnit` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Price per unit.',
  `pricePerUom` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Price per uom.',
  `products` JSON DEFAULT NULL COMMENT 'Inventory products.',
  `reorderPoint` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Reorder point.',
  `trackByLots` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether InventoryProduct is tracked by lots.',
  `unitOfMeasure` TEXT DEFAULT NULL,
  `unitOfMeasureId` TEXT DEFAULT NULL COMMENT 'Uom identifier.',
  `unitType` TEXT DEFAULT NULL,
  `unitTypeId` TEXT DEFAULT NULL COMMENT 'Alternative uom identifier.',
  `units` INT DEFAULT NULL COMMENT 'Alternative uom units.',
  `vendorId` TEXT DEFAULT NULL COMMENT 'Vendor identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryProductSetting REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InventoryProductSetting` (
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Filters by active/inactive status.',
  `searchQuery` TEXT DEFAULT NULL COMMENT 'Filters by name.',
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryProductSetting Filter REST model';



CREATE TABLE IF NOT EXISTS `Shep_InventoryVendor` (
  `address` TEXT DEFAULT NULL COMMENT 'Address.',
  `city` TEXT DEFAULT NULL COMMENT 'City.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `code` TEXT DEFAULT NULL COMMENT 'Code.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this InventoryVendor is active.',
  `name` TEXT DEFAULT NULL COMMENT 'Name.',
  `postalCode` TEXT DEFAULT NULL COMMENT 'Postal code.',
  `state` TEXT DEFAULT NULL COMMENT 'State.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryVendor REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Product` (
  `administrationPeriod` TEXT DEFAULT NULL,
  `administrationPeriodId` TEXT DEFAULT NULL COMMENT 'Administration period identifier.',
  `automaticTask` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether an automatic task exists for this product.',
  `automaticTaskDueDate` INT DEFAULT NULL COMMENT 'Automatic task due date.',
  `automaticTaskPriorityStatusId` TEXT DEFAULT NULL COMMENT 'Automatic task priority status identifier.',
  `automaticTaskTitle` TEXT DEFAULT NULL COMMENT 'Automatic task title.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `customDispensingFee` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the dispensing fee.',
  `defaultMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product will use a default medical record note, applies only to those products  that are included in medical record.',
  `defaultMedicalRecordNote` TEXT DEFAULT NULL COMMENT 'Default medical record note.',
  `dischargeInstructions` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product has discharge instructions.',
  `dischargeInstructionsText` TEXT DEFAULT NULL COMMENT 'Discharge instructions text.',
  `dispensingFee` TEXT DEFAULT NULL,
  `dispensingFeeId` TEXT DEFAULT NULL COMMENT 'Dispensing fee identifier.',
  `includedInMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product is included in medical record.',
  `includedOnInvoice` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this products settings are included on invoice.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is active.',
  `isControlled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is controlled.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is discountable.',
  `isPetAssureDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is pet assure discountable.',
  `isTaxable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is taxable.',
  `name` TEXT DEFAULT NULL COMMENT 'Name of the product.',
  `price` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Product price.',
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'Product category identifier.',
  `productTypeId` TEXT DEFAULT NULL COMMENT 'Product type identifier.',
  `taskEntryPriorityStatus` TEXT DEFAULT NULL,
  `timeStamp` DATETIME DEFAULT NULL COMMENT 'Time stamp.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product REST model.';



CREATE TABLE IF NOT EXISTS `Shep_TaskEntryPriorityStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TaskEntryPriorityStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UomUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Unit of measure REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InventoryStatus` (
  `categoryName` TEXT DEFAULT NULL COMMENT 'Name of the category.',
  `dateCreated` DATETIME DEFAULT NULL COMMENT 'Not implemented for filtering and sorting.',
  `dateUpdated` DATETIME DEFAULT NULL COMMENT 'Not implemented for filtering and sorting.',
  `maxQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Maximum quantity.',
  `minQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Minimum quantity.',
  `orderedQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Ordered quantity.',
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'Product category identifier.',
  `productId` TEXT DEFAULT NULL COMMENT 'Product identifier.',
  `productName` TEXT DEFAULT NULL COMMENT 'Name of the product.',
  `sumQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Sum quantity.',
  `unitOfMeasureId` TEXT DEFAULT NULL COMMENT 'Unit of measure identifier.',
  `unitOfMeasureName` TEXT DEFAULT NULL COMMENT 'Unit of measure.',
  `unitTypeId` TEXT DEFAULT NULL COMMENT 'Alternative unit of measure identifier.',
  `unitTypeName` TEXT DEFAULT NULL COMMENT 'Name of the alternative unit of measure.',
  `value` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Value representing estimated revenue for this product quantity of the current inventory status.',
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InventoryVendor` (
  `address` TEXT DEFAULT NULL COMMENT 'Address.',
  `city` TEXT DEFAULT NULL COMMENT 'City.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `code` TEXT DEFAULT NULL COMMENT 'Code.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this inventory vendor is active.',
  `name` TEXT DEFAULT NULL COMMENT 'Vendor name.',
  `postalCode` TEXT DEFAULT NULL COMMENT 'Postal code.',
  `state` TEXT DEFAULT NULL COMMENT 'State.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryVendor REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Invoice` (
  `balance` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount remaining to be paid on the invoice.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Client entity.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dateCheckedOut` DATETIME DEFAULT NULL COMMENT 'The invoice checkout date.',
  `dateIssued` DATETIME DEFAULT NULL COMMENT 'The invoice issue date.',
  `discount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The invoice discount amount.',
  `invoiceItems` JSON DEFAULT NULL COMMENT 'Invoice Items',
  `invoiceNumber` INT DEFAULT NULL COMMENT 'The invoice number.',
  `invoiceStatus` TEXT DEFAULT NULL,
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether invoice is deleted.',
  `isPaid` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the invoice is completely paid.',
  `isReturn` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this invoice is a product return.',
  `isTaxExempt` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this invoice is tax exempt.',
  `paid` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The total amount paid on the invoice.',
  `statusId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related InvoiceStatus entity.',
  `subtotal` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The invoice subtotal amount.',
  `tax` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The invoice tax amount.',
  `total` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The invoice total.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Invoice REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InvoiceItem` (
  `bottleNumber` TEXT DEFAULT NULL COMMENT 'The bottle number.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether invoice item is deleted.',
  `discount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The discount amount.',
  `discountGroup` TEXT DEFAULT NULL COMMENT 'The discount group.',
  `discountNote` TEXT DEFAULT NULL COMMENT 'The discount note.',
  `discountRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The discount rate value.',
  `dispensingFee` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The dispensing fee.',
  `includedInMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether [included in medical record].',
  `invoiceId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Invoice entity.',
  `invoiceItemSectionId` TEXT DEFAULT NULL COMMENT 'The invoiceitemsection identifier.',
  `isControlled` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is controlled.',
  `isDeclined` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is declined.',
  `isDiscountPercent` TINYINT(1) DEFAULT NULL COMMENT 'The is discount percent.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is discountable.',
  `isLegacyData` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is legacy data.',
  `isLegacyPrice` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is legacy price.',
  `isMicrochip` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is mirochip.',
  `isParentInvoiceItem` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is parent invoice item.',
  `isPetAssureDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is pet assure discountable.',
  `isReturned` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is returned.',
  `isTaxable` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is taxable.',
  `lineNumber` INT DEFAULT NULL COMMENT 'The line number value.',
  `lotNumber` TEXT DEFAULT NULL COMMENT 'The lot number.',
  `manufacturer` TEXT DEFAULT NULL COMMENT 'The manufacturer.',
  `medicationVolumeId` TEXT DEFAULT NULL COMMENT 'The medication volume identifier.',
  `minPrice` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The minimum price.',
  `name` TEXT DEFAULT NULL COMMENT 'The line item.',
  `parentInvoiceItemId` TEXT DEFAULT NULL COMMENT 'The parent invoice item identifier.',
  `patientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Patient entity.',
  `price` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The product price.',
  `priceManuallySet` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether [price manually set].',
  `productBundleId` TEXT DEFAULT NULL COMMENT 'The product bundle identifier.',
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ProductCategory entity.',
  `productId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Product entity.',
  `productQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The product quantity value.',
  `productTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ProductType entity.',
  `production` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The production amount.',
  `productionRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The production rate.',
  `productionUserId` TEXT DEFAULT NULL COMMENT 'The production user identifier.',
  `refillId` TEXT DEFAULT NULL COMMENT 'Refill identifier conecting invoice item to the refill and prescription.',
  `refundedPaymentId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the payment for which this is a refund of.',
  `returnedItemId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the invoice item for which this is a return of.',
  `returnedQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The returned quantity.',
  `returnedTotal` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The returned total.',
  `revision` INT DEFAULT NULL COMMENT 'The revision.',
  `serialNumber` TEXT DEFAULT NULL COMMENT 'The serial number.',
  `soapId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related SOAP entity.',
  `subTotal` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The subtotal amount.',
  `tax` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The tax amount.',
  `taxRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The tax rate value.',
  `timeAdministered` DATETIME DEFAULT NULL COMMENT 'The time administered.',
  `total` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The total amount.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InvoiceItem REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InvoiceStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InvoiceStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_Client` (
  `clientStatus` TEXT DEFAULT NULL,
  `clientStatusId` TEXT DEFAULT NULL COMMENT 'Client status identifier.',
  `email` TEXT DEFAULT NULL COMMENT 'Email.',
  `emailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether client receives email notifications.',
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `isSubscribedToNotifications` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client is subscribed to receiving notifications.',
  `isTaxExempt` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client is tax exempt.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'Legacy identifier.',
  `smsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether client receives SMS notifications.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Client REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InvoiceItem` (
  `bottleNumber` TEXT DEFAULT NULL COMMENT 'The bottle number.',
  `client` TEXT DEFAULT NULL,
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether invoice item is deleted.',
  `discount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The discount amount.',
  `discountGroup` TEXT DEFAULT NULL COMMENT 'The discount group.',
  `discountNote` TEXT DEFAULT NULL COMMENT 'Note added for the applied discount.',
  `discountOnReturn` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The discount on return.',
  `discountRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The discount rate value.',
  `dispensingFee` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The product dispensing fee amount.',
  `includedInMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether [included in medical record].',
  `inventoryLotId` TEXT DEFAULT NULL COMMENT 'The inventory lot identifier.',
  `inventoryTrackingId` TEXT DEFAULT NULL COMMENT 'The inventory tracking identifier.',
  `invoiceId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Invoice entity.',
  `invoiceIsTaxExempt` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether invoice is tax exempt.',
  `invoiceItemExtension` TEXT DEFAULT NULL,
  `invoiceItemSection` TEXT DEFAULT NULL,
  `invoiceItemSectionId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related InvoiceItemSection entity.',
  `isClientMedication` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is client medication.',
  `isControlled` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is controlled.',
  `isDeclined` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is declined.',
  `isDiscountPercent` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether the discount is percentage based or a flat amount.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this item is discountable.',
  `isLegacyData` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is legacy data.',
  `isLegacyPrice` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is legacy price.',
  `isMicrochip` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is mirochip.',
  `isParentInvoiceItem` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is parent invoice item.',
  `isPetAssureDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this item is PetAssure discountable.',
  `isReturned` TINYINT(1) DEFAULT NULL COMMENT 'Flag indicating whether this item was returned.',
  `isTaxable` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this instance is taxable.',
  `lineNumber` INT DEFAULT NULL COMMENT 'The line number of this item on the invoice.',
  `lotExpirationDate` DATETIME DEFAULT NULL COMMENT 'The lot expiration date.',
  `lotNumber` TEXT DEFAULT NULL COMMENT 'The lot number.',
  `manufacturer` TEXT DEFAULT NULL COMMENT 'The manufacturer.',
  `medicationVolume` TEXT DEFAULT NULL,
  `medicationVolumeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related MedicationVolume entity.',
  `minPrice` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The product minimum price.',
  `name` TEXT DEFAULT NULL COMMENT 'The line item.',
  `parentInvoiceItemId` TEXT DEFAULT NULL COMMENT 'The parent invoice item identifier.',
  `patient` TEXT DEFAULT NULL,
  `patientId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Patient entity.',
  `price` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The product price.',
  `priceManuallySet` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether [price manually set].',
  `productBundleId` TEXT DEFAULT NULL COMMENT 'The product bundle identifier.',
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ProductCategory entity.',
  `productId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Product entity.',
  `productQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The product quantity value.',
  `productQuantityWithVolume` TEXT DEFAULT NULL COMMENT 'The product quantity with volume.',
  `productTaxDetails` JSON DEFAULT NULL COMMENT 'The list of product-specific tax rates used for this invoice item.  If this property has a value, the tax rate applied to the invoice item is based on the products tax rate.  If both this property and the &#x60;ZipCodeTaxDetail&#x60; property are empty, and a tax rate is provided,  the tax rate used was based on the clinics address.',
  `productTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ProductType entity.',
  `production` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The production amount.',
  `productionRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The production rate.',
  `productionUser` TEXT DEFAULT NULL,
  `productionUserId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related UserInfo entity representing the production user.',
  `refillId` TEXT DEFAULT NULL COMMENT 'Refill identifier conecting invoice item to the refill and prescription.',
  `refundedPaymentId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the payment for which this is a refund of.',
  `returnedItemId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the invoice item for which this is a return of.',
  `returnedQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The total product quantity that was returned.',
  `returnedTotal` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The total amount of money that was returned.',
  `revision` INT DEFAULT NULL COMMENT 'The revision.',
  `serialNumber` TEXT DEFAULT NULL COMMENT 'The serial number.',
  `soapId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related SOAP entity.',
  `subtotal` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The subtotal amount.',
  `tax` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The tax amount.',
  `taxRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The tax rate.',
  `timeAdministered` DATETIME DEFAULT NULL COMMENT 'The time administered.',
  `total` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The total amount.',
  `zipCodeTaxDetail` TEXT DEFAULT NULL COMMENT 'The zip code used to determine the tax rate for this invoice item.  If this property has a value, the tax rate applied to the invoice item is based on the clients zip code.  If both this property and the &#x60;TaxDetails&#x60; property are empty, and a tax rate is provided,  the tax rate used was based on the clinics address.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InvoiceItem REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InvoiceItemExtension` (
  `discountedByUser` TEXT DEFAULT NULL,
  `discountedByUserId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related UserInfo entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InvoiceItemExtension REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InvoiceItemSection` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InvoiceItemSection REST model';



CREATE TABLE IF NOT EXISTS `Shep_MedicationVolume` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MedicationVolume REST model';



CREATE TABLE IF NOT EXISTS `Shep_Patient` (
  `breedId` TEXT DEFAULT NULL COMMENT 'Breed identifier.',
  `color` TEXT DEFAULT NULL COMMENT 'Pateint color.',
  `dateDeceased` DATETIME DEFAULT NULL COMMENT 'Date deceased.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `dateOfBirth` DATETIME DEFAULT NULL COMMENT 'Date of birth.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this Patient is deleted.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'Legacy identifier.',
  `microchipNumber` TEXT DEFAULT NULL COMMENT 'Microchip number.',
  `name` TEXT DEFAULT NULL COMMENT 'Patient name.',
  `patientCPRStatusId` TEXT DEFAULT NULL COMMENT 'Patient CPR status identifier.',
  `patientStatus` TEXT DEFAULT NULL,
  `rabiesTag` TEXT DEFAULT NULL COMMENT 'Rabies tag.',
  `sexId` TEXT DEFAULT NULL COMMENT 'Sex identifier.',
  `statusId` TEXT DEFAULT NULL COMMENT 'Status identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PatientStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PateintStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProductTaxDetail` (
  `name` TEXT DEFAULT NULL COMMENT 'The name or description of the tax applied to the product.',
  `tax` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Represents the tax amount applied to a specific product on the invoice.  This property holds the total tax value calculated for the product based on its tax rate.',
  `taxRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The rate at which tax is applied to the product.  This value is expressed as a percentage (e.g., 15 for 15% tax) and is used to calculate the tax amount.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProductTaxDetail REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'The users first name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'The users last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='User info REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Location` (
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this location is active.',
  `name` TEXT DEFAULT NULL COMMENT 'Location name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Location REST api model.';



CREATE TABLE IF NOT EXISTS `Shep_Mentation` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mentation Unit REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Conversation` (
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `conversationAssignedToUsers` JSON DEFAULT NULL COMMENT 'Conversation assigned to users.',
  `conversationStatusId` TEXT DEFAULT NULL COMMENT 'Conversation status identifier.',
  `isReminder` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this instance is sent from reminder. automatically by the clinic.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Conversation REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ConversationAssignedToUser` (
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Conversation Assigned To User REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Message` (
  `content` TEXT DEFAULT NULL COMMENT 'Content of message.',
  `conversation` TEXT DEFAULT NULL,
  `conversationId` TEXT DEFAULT NULL COMMENT 'Conversation identifier.',
  `isClientMessage` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether the client sent or received this message',
  `isRead` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this Message is read.',
  `messageStatus` TEXT DEFAULT NULL,
  `messageStatusId` TEXT DEFAULT NULL COMMENT 'Message status identifier.',
  `orderNum` INT DEFAULT NULL COMMENT 'Global order number of message.',
  `sendingScheduledFor` DATETIME DEFAULT NULL COMMENT 'Time when the message',
  `sentByUserFormatted` TEXT DEFAULT NULL COMMENT 'Full name of the user, including the prefix and suffix.',
  `sentByUserId` TEXT DEFAULT NULL COMMENT 'Sent by user identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Message REST model.';



CREATE TABLE IF NOT EXISTS `Shep_MessageStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MessageStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Clinic` (
  `clinicSetting` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL COMMENT 'The clinic name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Clinic REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClinicSetting` (
  `isMassCommunicationEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether MassCommunication is enabled.',
  `isMessagingEnabled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether Messaging is enabled.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClinicSetting REST model';



CREATE TABLE IF NOT EXISTS `Shep_MucousMembrane` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mucous Membrane REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PatientCPRStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientCPRStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_PatientChronicCondition` (
  `dateActive` DATETIME DEFAULT NULL COMMENT 'The date since this Patient Chronic Condition is active.',
  `dateResolved` DATETIME DEFAULT NULL COMMENT 'The date when this Patient Chronic Condition got resolved.',
  `diagnosingNote` TEXT DEFAULT NULL COMMENT 'A note related to a Patient Chronic Condition that is required when Chronic Condition is diagnosed.',
  `diagnosingSoapId` TEXT DEFAULT NULL COMMENT 'Diagnosing soap id is enterd when a chronic condition is diagnosed on a patient soap. If chronic  condition is diagnosed on a patient this field will be null.',
  `diagnosingUserId` TEXT DEFAULT NULL COMMENT 'The unique identifier of a user who diagnosed this chronic condition.',
  `isResolved` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this Chronic Condition is resolved.',
  `patientId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the patient for which a Chronic Condition is diagnosed for.',
  `resolvingClinicId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the Clinic which resolved the patients chronic condition. If Chronic Condition  isnt resolved, it will return null.',
  `resolvingNote` TEXT DEFAULT NULL COMMENT 'The resolving note created when a chronic condition gets resolved.',
  `resolvingSoapId` TEXT DEFAULT NULL COMMENT 'The Id of the SOAP on which the chronic condition got resolved. If it is not related to a SOAP this  value will return null.',
  `resolvingUserId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the User who resolved the patients chronic condition. If Chronic Condition  isnt resolved, it will return null.',
  `snomedDiagnosisDescription` TEXT DEFAULT NULL,
  `snomedDiagnosisDescriptionId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the Diagnosis Description related to this Chronic Condition.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient Chronic Condition REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PatientChronicCondition` (
  `clinicIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Clinic identifiers. Defaults to null. The filter is applicable only if the group to which the clinic belongs shares clients and patients.',
  `diagnosingSoapIds` TEXT DEFAULT NULL COMMENT 'Filter by Comma-separated list of diagnosing soap identifiers.',
  `diagnosingUserIds` TEXT DEFAULT NULL COMMENT 'Filter by Comma-separated list of unique Diagnosing User identifiers.',
  `isResolved` TINYINT(1) DEFAULT NULL COMMENT 'Filters by IsResolved status. Defaults to null (fetches both resolved and unresolved entities.)',
  `resolvingSoapIds` TEXT DEFAULT NULL COMMENT 'Filter by Comma-separated list of resolving soap identifiers.',
  `resolvingUserIds` TEXT DEFAULT NULL COMMENT 'Filter by Comma-separated list of unique Resolving User identifiers.',
  `snomedDiagnosisDescriptionIds` TEXT DEFAULT NULL COMMENT 'Filter by Comma-separated list of unique SNOMED Diagnosis description identifiers.',
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient Condition Filter Model';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagnosisDescript` (
  `description` TEXT DEFAULT NULL COMMENT 'The Description of the Diagnosis.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Snomed Diagnosis Description REST model.';



CREATE TABLE IF NOT EXISTS `Shep_AuthorizedAgent` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'Phone number.',
  `role` TEXT DEFAULT NULL COMMENT 'The role.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Breed` (
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this breed is deleted.',
  `isLegacy` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this breed is legacy.',
  `species` TEXT DEFAULT NULL,
  `speciesId` TEXT DEFAULT NULL COMMENT 'Species identifier.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Breed REST model';



CREATE TABLE IF NOT EXISTS `Shep_Client` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Additional text.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Alerts.',
  `authorizedAgents` JSON DEFAULT NULL COMMENT 'Authorized agents.',
  `clientCoOwner` TEXT DEFAULT NULL,
  `clientInfo` TEXT DEFAULT NULL,
  `clientPhones` JSON DEFAULT NULL COMMENT 'Client co owner phones.',
  `clientStatus` TEXT DEFAULT NULL,
  `clientStatusId` TEXT DEFAULT NULL COMMENT 'Client status id.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `email` TEXT DEFAULT NULL COMMENT 'Email.',
  `emailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether client receives email notifications.',
  `firstName` TEXT DEFAULT NULL COMMENT 'Firstname.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier.',
  `isSubscribedToNotifications` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client is subscribed to receive notifications.',
  `isTaxExempt` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client is tax exempt on products.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'Legacy identifier.',
  `smsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether client receives SMS notifications.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Client REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClientCoOwner` (
  `clientCoOwnerPhones` JSON DEFAULT NULL COMMENT 'Client co owner phones.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `email` TEXT DEFAULT NULL COMMENT 'Email.',
  `emailNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether client co owner receives email notifications.',
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `smsNotification` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether client co owner receives SMS notifications.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Base REST model for client co owner.';



CREATE TABLE IF NOT EXISTS `Shep_ClientCoOwnerPhone` (
  `clientCoOwnerId` TEXT DEFAULT NULL COMMENT 'Client co owner id.',
  `country` TEXT DEFAULT NULL,
  `countryId` TEXT DEFAULT NULL COMMENT 'Country identifier.',
  `isPrimary` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this phone is primary.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'Phone number.',
  `phoneType` TEXT DEFAULT NULL,
  `phoneTypeId` TEXT DEFAULT NULL COMMENT 'Phone type id.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The client co owner phone class. &lt;seealso cref&#x3D;T:MonoSoftware.Baasic.Core.BCL.WebAPI.RESTModelBase /&gt;';



CREATE TABLE IF NOT EXISTS `Shep_ClientInfo` (
  `address` TEXT DEFAULT NULL COMMENT 'Address.',
  `address2` TEXT DEFAULT NULL COMMENT 'Address2.',
  `city` TEXT DEFAULT NULL COMMENT 'City.',
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `state` TEXT DEFAULT NULL COMMENT 'State.',
  `zipCode` TEXT DEFAULT NULL COMMENT 'Zip code.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientInfo REST model';



CREATE TABLE IF NOT EXISTS `Shep_ClientPhone` (
  `country` TEXT DEFAULT NULL,
  `countryId` TEXT DEFAULT NULL COMMENT 'Country identifier.',
  `isPrimary` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this phone is primary.',
  `phoneNumber` TEXT DEFAULT NULL COMMENT 'Phone number.',
  `phoneType` TEXT DEFAULT NULL,
  `phoneTypeId` TEXT DEFAULT NULL COMMENT 'Phone type id.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The client co owner phone class. &lt;seealso cref&#x3D;T:MonoSoftware.Baasic.Core.BCL.WebAPI.RESTModelBase /&gt;';



CREATE TABLE IF NOT EXISTS `Shep_ClientStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientStatus RESTModel';



CREATE TABLE IF NOT EXISTS `Shep_Country` (
  `phoneCode` TEXT DEFAULT NULL COMMENT 'Phone code.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Country REST model.';



CREATE TABLE IF NOT EXISTS `Shep_FileEntry` (
  `fileExtension` TEXT DEFAULT NULL COMMENT 'The file extension of the associated file entry.',
  `fileName` TEXT DEFAULT NULL COMMENT 'The file name of the associated file entry.',
  `fileSize` BIGINT DEFAULT NULL COMMENT 'The file size, in bytes, of the associated file entry.',
  `url` TEXT DEFAULT NULL COMMENT 'A URL for file download, valid for one hour.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Media entry used to transfer data from and to controller.';



CREATE TABLE IF NOT EXISTS `Shep_Patient` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Additional text.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Alerts.',
  `breed` TEXT DEFAULT NULL,
  `breedId` TEXT DEFAULT NULL COMMENT 'Breed identifier.',
  `clients` JSON DEFAULT NULL COMMENT 'Patients owner(s).',
  `color` TEXT DEFAULT NULL COMMENT 'Color.',
  `dateDeceased` DATETIME DEFAULT NULL COMMENT 'Date deceased.',
  `dateOfBirth` DATETIME DEFAULT NULL COMMENT 'Date of birth.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether patient is deleted.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'Legacy identifier.',
  `microchipNumber` TEXT DEFAULT NULL COMMENT 'Microchip number.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name property of the Patient.',
  `patientCPRStatus` TEXT DEFAULT NULL,
  `patientCPRStatusNote` TEXT DEFAULT NULL COMMENT 'Patient CPR status note.',
  `patientCprstatusId` TEXT DEFAULT NULL COMMENT 'Patient CPR status identifier.',
  `patientSex` TEXT DEFAULT NULL,
  `patientStatus` TEXT DEFAULT NULL,
  `rabiesTag` TEXT DEFAULT NULL COMMENT 'Rabies tag.',
  `sexId` TEXT DEFAULT NULL COMMENT 'Sex identifier.',
  `statusId` TEXT DEFAULT NULL COMMENT 'Status identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PatientCPRStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientCPRStatus RESTModel';



CREATE TABLE IF NOT EXISTS `Shep_PatientSex` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientSex RESTModel';



CREATE TABLE IF NOT EXISTS `Shep_PatientStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_PhoneType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PhoneType RESTModel';



CREATE TABLE IF NOT EXISTS `Shep_Species` (
  `isLegacy` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this species is legacy.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Species REST model';



CREATE TABLE IF NOT EXISTS `Shep_PatientNote` (
  `createdByUser` TEXT DEFAULT NULL,
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Id of the user who created the patient note.',
  `editedByPav2User` TEXT DEFAULT NULL,
  `editedByUser` TEXT DEFAULT NULL,
  `editedByUserId` TEXT DEFAULT NULL COMMENT 'Id of the user who edited the patient note.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this instance is deleted.',
  `note` TEXT DEFAULT NULL COMMENT 'Content of the note.',
  `patientId` TEXT DEFAULT NULL COMMENT 'Id of the patient to which the note belongs.',
  `title` TEXT DEFAULT NULL COMMENT 'Note title.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `isDoctor` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether the user is a doctor.',
  `prefix` TEXT DEFAULT NULL COMMENT 'Prefix of the user.',
  `suffix` TEXT DEFAULT NULL COMMENT 'Suffix of the user.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User rest model.';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name of the user who edited the patient note.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name of the user who edited the patient note.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PatientSex` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientSex REST model';



CREATE TABLE IF NOT EXISTS `Shep_PatientStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_Patient` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this Patient is deleted.',
  `name` TEXT DEFAULT NULL COMMENT 'Patient name.',
  `patientStatus` TEXT DEFAULT NULL,
  `statusId` TEXT DEFAULT NULL COMMENT 'Patient status identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PatientStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PatientVaccine` (
  `administrationDate` DATETIME DEFAULT NULL COMMENT 'Administration date.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dueDate` DATETIME DEFAULT NULL COMMENT 'Due date.',
  `invoiceItemId` TEXT DEFAULT NULL COMMENT 'Invoice item identifier.',
  `isRabiesVaccine` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this patient vaccine is rabies vaccine.',
  `lotNumber` TEXT DEFAULT NULL COMMENT 'Lot number.',
  `manufacturer` TEXT DEFAULT NULL COMMENT 'Manufacturer.',
  `note` TEXT DEFAULT NULL COMMENT 'The note.',
  `patient` TEXT DEFAULT NULL,
  `patientId` TEXT DEFAULT NULL COMMENT 'Patient identifier.',
  `patientVaccineStatus` TEXT DEFAULT NULL,
  `patientVaccineStatusId` TEXT DEFAULT NULL COMMENT 'Patient vaccine status identifier.',
  `product` TEXT DEFAULT NULL,
  `productId` TEXT DEFAULT NULL COMMENT 'Product identifier.',
  `rabiesTag` TEXT DEFAULT NULL COMMENT 'Rabies tag of this vaccination.',
  `refillId` TEXT DEFAULT NULL COMMENT 'Refill identifier.',
  `reminderId` TEXT DEFAULT NULL COMMENT 'Reminder identifier.',
  `serialNumber` TEXT DEFAULT NULL COMMENT 'Serial number.',
  `soap` TEXT DEFAULT NULL,
  `soapId` TEXT DEFAULT NULL COMMENT 'SOAP identifier.',
  `vaccineLotExpirationDate` DATETIME DEFAULT NULL COMMENT 'Vaccine lot expiration date.',
  `vaccineName` TEXT DEFAULT NULL COMMENT 'Vaccine name.',
  `vaccineProductConfigurationId` TEXT DEFAULT NULL COMMENT 'Vaccine product configuration identifier.',
  `verifiedBy` TEXT DEFAULT NULL COMMENT 'Represents verifier of the patient vaccine.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientVaccine REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PatientVaccineStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientVaccineStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Product` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `isRabiesVaccine` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is a rabies vaccine.',
  `name` TEXT DEFAULT NULL COMMENT 'Product name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Soap` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `soapStatus` TEXT DEFAULT NULL,
  `soapStatusId` TEXT DEFAULT NULL COMMENT 'SOAP status identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PatientWeightEntry` (
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Identifier of clinic user that recorded the weight entry.',
  `date` DATETIME DEFAULT NULL COMMENT 'Weighing date.',
  `note` TEXT DEFAULT NULL COMMENT 'Weight entry note.',
  `patientId` TEXT DEFAULT NULL COMMENT 'Patient identifier.',
  `weight` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Weight entry value.',
  `weightUnit` TEXT DEFAULT NULL,
  `weightUnitId` TEXT DEFAULT NULL COMMENT 'Weight unit identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientWeightEntry REST model';



CREATE TABLE IF NOT EXISTS `Shep_WeightUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='WeightUnit RESTModel';



CREATE TABLE IF NOT EXISTS `Shep_ClientClinicBalance` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Client balance amount.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClientClinicBalance REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InvoicePayment` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `closedAmount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount used for closing.',
  `closedDate` DATETIME DEFAULT NULL COMMENT 'Date of closing the Invoice payment.',
  `description` TEXT DEFAULT NULL COMMENT 'Description.',
  `invoiceId` TEXT DEFAULT NULL COMMENT 'Invoice identifier.',
  `isFullyPaid` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this invoice payment is fully paid.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InvoicePayment Rest model';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `licenseNumber` TEXT DEFAULT NULL COMMENT 'License number.',
  `prefix` TEXT DEFAULT NULL COMMENT 'The prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'The suffix.',
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Payment` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount for this payment.',
  `authCode` TEXT DEFAULT NULL COMMENT 'Authentication code of this payment.',
  `cardType` TEXT DEFAULT NULL COMMENT 'Type of the card used for this payment.',
  `changeAmount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Change amount for this payment, only appplied for cash payments.',
  `clientBalanceAfterPayment` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Client balance after payment is processed.',
  `clientClinicBalance` TEXT DEFAULT NULL,
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `customerId` TEXT DEFAULT NULL COMMENT 'Customer identifier.',
  `dateVoided` DATETIME DEFAULT NULL COMMENT 'Date when the payment was voided.',
  `invoicePayments` JSON DEFAULT NULL COMMENT 'Invoice payments.',
  `isBanquest` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether payment is banquest payment.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether payment is deleted.',
  `lastDigits` TEXT DEFAULT NULL COMMENT 'Last 4 digits of the card used for this payment.',
  `note` TEXT DEFAULT NULL COMMENT 'The note, usually extra information regarding this payment.',
  `payToCreditBalance` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount to add to credit balance.',
  `paymentDate` DATETIME DEFAULT NULL COMMENT 'Date when the payment was processed.',
  `paymentMethod` TEXT DEFAULT NULL,
  `paymentMethodId` TEXT DEFAULT NULL COMMENT 'Payment method identifier.',
  `paymentStatus` TEXT DEFAULT NULL,
  `paymentStatusId` TEXT DEFAULT NULL COMMENT 'Payment status identifier.',
  `processedByUser` TEXT DEFAULT NULL,
  `processedByUserId` TEXT DEFAULT NULL COMMENT 'Processed by user identifier.',
  `referenceNumber` TEXT DEFAULT NULL COMMENT 'Reference number.',
  `refundPayments` JSON DEFAULT NULL COMMENT 'Refund payments.',
  `refundedPayment` TEXT DEFAULT NULL,
  `refundedPaymentId` TEXT DEFAULT NULL COMMENT 'Refunded payment identifier.',
  `returnedAmount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Returned amount.',
  `transactionId` TEXT DEFAULT NULL COMMENT 'Transaction identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Payment REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PaymentMethod` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PaymentMethod REST model';



CREATE TABLE IF NOT EXISTS `Shep_PaymentStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PaymentStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_RefundPayment` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount to refund.',
  `clientClinicBalance` TEXT DEFAULT NULL,
  `paymentDate` DATETIME DEFAULT NULL COMMENT 'Date when the payment was processed.',
  `paymentStatusId` TEXT DEFAULT NULL COMMENT 'Payment status id.',
  `referenceNumber` TEXT DEFAULT NULL COMMENT 'Reference number.',
  `transactionId` TEXT DEFAULT NULL COMMENT 'Transaction id.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RefundPayment REST model.';



CREATE TABLE IF NOT EXISTS `Shep_RefundedPayment` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount that was refunded.',
  `clientClinicBalance` TEXT DEFAULT NULL,
  `paymentDate` DATETIME DEFAULT NULL COMMENT 'Date when the payment was processed.',
  `paymentStatusId` TEXT DEFAULT NULL COMMENT 'Payment status id.',
  `referenceNumber` TEXT DEFAULT NULL COMMENT 'Reference number.',
  `transactionId` TEXT DEFAULT NULL COMMENT 'Transaction id.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RefundedPayment REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PaymentMethod` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PaymentMethod REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PaymentStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PaymentStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PhoneType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PhoneType REST model';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `licenseNumber` TEXT DEFAULT NULL COMMENT 'License number.',
  `prefix` TEXT DEFAULT NULL COMMENT 'The prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'The suffix.',
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User rest model.';



CREATE TABLE IF NOT EXISTS `Shep_Prescription` (
  `cancelNote` TEXT DEFAULT NULL COMMENT 'Cancel note, this is a property for business logic.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdByPav2User` TEXT DEFAULT NULL,
  `createdByUser` TEXT DEFAULT NULL,
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Created by user identifier.',
  `direction` TEXT DEFAULT NULL COMMENT 'Direction, explaining how to use the product/medication.',
  `expirationDate` DATETIME DEFAULT NULL COMMENT 'Expiration date.',
  `isCanceled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this prescription is canceled.',
  `isChronicMedication` TINYINT(1) DEFAULT NULL COMMENT 'Calue indicating whether this prescription is chronic medication.',
  `isRefillAllowed` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this prescription is refill allowed.',
  `isWritten` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this prescription is written.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the prescription.',
  `patientId` TEXT DEFAULT NULL COMMENT 'Patient identifier.',
  `pav2User` TEXT DEFAULT NULL,
  `prescribingDoctor` TEXT DEFAULT NULL,
  `prescribingDoctorId` TEXT DEFAULT NULL COMMENT 'Prescribing doctor identifier.',
  `productId` TEXT DEFAULT NULL COMMENT 'Product identifier.',
  `quantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Quantity.',
  `refillCount` INT DEFAULT NULL COMMENT 'Refill count. The amount of times this prescription was refilled.',
  `refillPrn` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this prescription supports PRN refills.',
  `refillQuantity` INT DEFAULT NULL COMMENT 'Total available refill amount.',
  `soapId` TEXT DEFAULT NULL COMMENT 'SOAP identifier.',
  `substitutionPermitted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether substitution is permitted for the written prescription product.',
  `writtenIsControlled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether written product for this prescription is a controlled product.',
  `writtenProduct` TEXT DEFAULT NULL COMMENT 'Written product.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Prescription REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProductBundle` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdById` TEXT DEFAULT NULL COMMENT 'Unique identifier of the user who created this instance.',
  `defaultDiscount` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether deafult discount is applicable to this instance.',
  `discountNote` TEXT DEFAULT NULL COMMENT 'Discount note.',
  `discountRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Discount Rate',
  `groupId` TEXT DEFAULT NULL COMMENT 'Group identifier',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is active.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is deleted.',
  `isDiscountPercent` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is discount percent.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is discountable.',
  `isPetAssureDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is pet assure discountable.',
  `isStaticPriceBundle` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is static price bundle.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name of this Product Bundle.',
  `productCategory` TEXT DEFAULT NULL,
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'The product category identifier.',
  `staticBundlePrice` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The static bundle price . It will be set only if this Product Bundle is a static price bundle.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product Bundle REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProductCategory` (
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is active.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is deleted.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is discountable.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name of The Product Category.',
  `parentId` TEXT DEFAULT NULL COMMENT 'Parent category identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProductCategory REST Model';



CREATE TABLE IF NOT EXISTS `Shep_MedicationVolume` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Medication volume REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Product` (
  `administrationPeriodId` TEXT DEFAULT NULL COMMENT 'Administration period identifier.',
  `automaticTask` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether an automatic task exists for this product.',
  `automaticTaskDueDate` INT DEFAULT NULL COMMENT 'Automatic task due date.',
  `automaticTaskPriorityStatusId` TEXT DEFAULT NULL COMMENT 'Automatic task priority status identifier.',
  `automaticTaskTitle` TEXT DEFAULT NULL COMMENT 'Automatic task title.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `defaultMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product will use a default medical record note, applies only to those products  that are included in medical record.',
  `defaultMedicalRecordNote` TEXT DEFAULT NULL COMMENT 'Default medical record note.',
  `dischargeInstructions` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product has discharge instructions.',
  `dischargeInstructionsText` TEXT DEFAULT NULL COMMENT 'Discharge instructions text.',
  `dispensingFeeId` TEXT DEFAULT NULL COMMENT 'Dispensing fee identifier.',
  `includedInMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product is included in medical record.',
  `includedOnInvoice` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this products settings are included on invoice.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is active.',
  `isControlled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is controlled.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is discountable.',
  `isPetAssureDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is pet assure discountable.',
  `isTaxable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is taxable.',
  `name` TEXT DEFAULT NULL COMMENT 'Name of the product.',
  `price` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Product price.',
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'Product category identifier.',
  `productTypeId` TEXT DEFAULT NULL COMMENT 'Product type identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProductBundle` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdById` TEXT DEFAULT NULL COMMENT 'Unique identifier of the user who created this instance.',
  `defaultDiscount` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether deafult discount is applicable to this instance.',
  `discountNote` TEXT DEFAULT NULL COMMENT 'Discount note.',
  `discountRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Discount Rate',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is active.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is deleted.',
  `isDiscountPercent` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is discount percent.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is discountable.',
  `isPetAssureDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is pet assure discountable.',
  `isStaticPriceBundle` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is static price bundle.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name of this Product Bundle.',
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'The product category identifier.',
  `staticBundlePrice` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The static bundle price. It will be set only if this Product Bundle is a static price bundle.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product Bundle REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProductBundleItem` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `description` TEXT DEFAULT NULL COMMENT 'The Description property of the Product Bundle Item.',
  `discountAmount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The discount amount for this product bundle item.',
  `dose` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The dose for this product bundle item.',
  `groupId` TEXT DEFAULT NULL COMMENT 'A group Unique identifier.',
  `isDiscountPercent` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether a discount on this instance is in percentage.',
  `maxQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The maximum quantity of this product bundle item.',
  `medicationVolume` TEXT DEFAULT NULL,
  `medicationVolumeId` TEXT DEFAULT NULL COMMENT 'The medication volume identifier.',
  `minQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The minimum quantity of this product bundle item.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name property of the Product Bundle Item.',
  `nestedBundle` TEXT DEFAULT NULL,
  `nestedBundleId` TEXT DEFAULT NULL COMMENT 'The nested bundle identifier.',
  `product` TEXT DEFAULT NULL,
  `productBundle` TEXT DEFAULT NULL,
  `productBundleId` TEXT DEFAULT NULL COMMENT 'The product bundle identifier.',
  `productId` TEXT DEFAULT NULL COMMENT 'The product identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product Bundle Item REST model';



CREATE TABLE IF NOT EXISTS `Shep_ProductCategory` (
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product category is active.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product category is deleted.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product category is discountable.',
  `name` TEXT DEFAULT NULL COMMENT 'Product category name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProductCategory REST model';



CREATE TABLE IF NOT EXISTS `Shep_AdministrationPeriod` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Administration period REST model.';



CREATE TABLE IF NOT EXISTS `Shep_AdministrationRoute` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Administration route REST model.';



CREATE TABLE IF NOT EXISTS `Shep_DispensingFee` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Amount of the dispensing fee.',
  `name` TEXT DEFAULT NULL COMMENT 'Product bundle Name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='DispensingFee REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InjectionProduct` (
  `administrationRoutes` JSON DEFAULT NULL COMMENT 'Administration routes.',
  `concentration` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Concentration (unit of measure is set by medication unit/medication volume).',
  `injectionName` TEXT DEFAULT NULL COMMENT 'Name of the injection.',
  `medicationUnit` TEXT DEFAULT NULL,
  `medicationUnitId` TEXT DEFAULT NULL COMMENT 'Medication unit id.',
  `medicationVolume` TEXT DEFAULT NULL,
  `medicationVolumeId` TEXT DEFAULT NULL COMMENT 'Medication volume id.',
  `minPrice` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Minimal price.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InjectionProduct REST model.';



CREATE TABLE IF NOT EXISTS `Shep_InventoryProductSetting` (
  `cost` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the cost.',
  `initialCount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the initial count.',
  `initialCountValue` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the initial count value.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this instance is active.',
  `maxQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the maximum quantity.',
  `minQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the minimum quantity.',
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.',
  `orderQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the order quantity.',
  `reorderPoint` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the reorder point.',
  `unitOfMeasure` TEXT DEFAULT NULL,
  `unitOfMeasureId` TEXT DEFAULT NULL COMMENT 'Gets or sets the uom identifier.',
  `unitType` TEXT DEFAULT NULL,
  `unitTypeId` TEXT DEFAULT NULL COMMENT 'Gets or sets the alternative uom identifier.',
  `units` INT DEFAULT NULL COMMENT 'Gets or sets the alternative uom units.',
  `vendorId` TEXT DEFAULT NULL COMMENT 'Gets or sets the vendor identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='InventoryProductSetting REST model.';



CREATE TABLE IF NOT EXISTS `Shep_MedicationProduct` (
  `administrationRoutes` JSON DEFAULT NULL COMMENT 'Administration routes.',
  `concentration` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Concentration (unit of measure set by medication unit/medication volume).',
  `medicationName` TEXT DEFAULT NULL COMMENT 'Name of the medication.',
  `medicationUnit` TEXT DEFAULT NULL,
  `medicationUnitId` TEXT DEFAULT NULL COMMENT 'Medication unit id.',
  `medicationVolume` TEXT DEFAULT NULL,
  `medicationVolumeId` TEXT DEFAULT NULL COMMENT 'Medication volume id.',
  `minPrice` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Minimal price.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MedicationProduct REST model.';



CREATE TABLE IF NOT EXISTS `Shep_MedicationUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Medication unit REST model.';



CREATE TABLE IF NOT EXISTS `Shep_MedicationVolume` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Medication volume REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Product` (
  `administrationPeriod` TEXT DEFAULT NULL,
  `administrationPeriodId` TEXT DEFAULT NULL COMMENT 'Administration period identifier.',
  `automaticTask` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether an automatic task exists for this product.',
  `automaticTaskDueDate` INT DEFAULT NULL COMMENT 'Automatic task due date.',
  `automaticTaskPriorityStatusId` TEXT DEFAULT NULL COMMENT 'Automatic task priority status identifier.',
  `automaticTaskTitle` TEXT DEFAULT NULL COMMENT 'Automatic task title.',
  `customDispensingFee` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Gets or sets the dispensing fee.',
  `defaultMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product will use a default medical record note, applies only to those products  that are included in medical record.',
  `defaultMedicalRecordNote` TEXT DEFAULT NULL COMMENT 'Default medical record note.',
  `dischargeInstructions` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product has discharge instructions.',
  `dischargeInstructionsText` TEXT DEFAULT NULL COMMENT 'Discharge instructions text.',
  `dispensingFee` TEXT DEFAULT NULL,
  `dispensingFeeId` TEXT DEFAULT NULL COMMENT 'Dispensing fee identifier.',
  `includedInMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product is included in medical record.',
  `includedOnInvoice` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this products settings are included on invoice.',
  `injectionProduct` TEXT DEFAULT NULL,
  `inventoryProductSetting` TEXT DEFAULT NULL,
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is active.',
  `isControlled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is controlled.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is deleted.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is discountable.',
  `isPetAssureDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is pet assure discountable.',
  `isTaxable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is taxable.',
  `medicationProduct` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL COMMENT 'Name of the product.',
  `price` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Product price.',
  `productCategory` TEXT DEFAULT NULL,
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'Product category identifier.',
  `productType` TEXT DEFAULT NULL,
  `productTypeId` TEXT DEFAULT NULL COMMENT 'Product type identifier.',
  `serviceProduct` TEXT DEFAULT NULL,
  `timeStamp` DATETIME DEFAULT NULL COMMENT 'Time stamp.',
  `vaccineProduct` TEXT DEFAULT NULL,
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product REST model';



CREATE TABLE IF NOT EXISTS `Shep_ProductCategory` (
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product category is active.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product category is deleted.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product category is discountable.',
  `name` TEXT DEFAULT NULL COMMENT 'Product category name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProductCategory REST model';



CREATE TABLE IF NOT EXISTS `Shep_ProductType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product type REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ServiceProduct` (
  `updateDeceased` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this service could change patients status to deceased.',
  `updateFemaleSpayedMaleNeutered` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this service could make patient spayed/neutered.',
  `updatePatientStatus` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this service could cahnge patients status.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ServiceProduct REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UnitOfMeasure` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Unit Of Measure REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UnitType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Unit Type REST model.';



CREATE TABLE IF NOT EXISTS `Shep_VaccineProduct` (
  `isRabiesVaccine` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this vaccine is rabies vaccine.',
  `timeStamp` DATETIME DEFAULT NULL COMMENT 'Time stamp.',
  `vaccineName` TEXT DEFAULT NULL COMMENT 'Vaccine name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Vaccine REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProductTaxRate` (
  `name` TEXT DEFAULT NULL COMMENT 'Product tax rate name.',
  `taxRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Value of the product tax rate.  The tax rate for a product refers to the percentage of tax applied to the products price at the point of sale.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProductTaxRate REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClinicProduct` (
  `administrationPeriodId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related AdministrationPeriod entity.',
  `automaticTask` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether an automatic task exists for this clinic product.  An automatic task is an action that will be triggered after the clinic product is used.',
  `automaticTaskDueDate` INT DEFAULT NULL COMMENT 'Number of days until this automatic task is due.',
  `automaticTaskEntryPriorityStatusId` TEXT DEFAULT NULL COMMENT 'Automatic task entry priority status identifier.',
  `automaticTaskTitle` TEXT DEFAULT NULL COMMENT 'Title of the automatic task linked to the clinic product.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `defaultMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product will use a default medical record note, applies only to those clinic products  that are included in medical record.',
  `defaultMedicalRecordNote` TEXT DEFAULT NULL COMMENT 'The default medical record note associated with the clinic product, used to document and  describe the product.',
  `dischargeInstructions` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this clinic product includes discharge instructions.',
  `dischargeInstructionsText` TEXT DEFAULT NULL COMMENT 'Discharge instructions text for patient owners  on how to act and what to do after administration of clinic product.',
  `discountRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Discount rate for the clinic product.  This value depends on the IsDiscountPercent flag: if false, the discount is shown in dollars; if true, it is expressed as a percentage from 0 to 100.',
  `dispensingFee` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The product dispensing fee amount.  This charge, expressed in dollars, is added by the clinic to the cost of filling a prescription or providing a service,  covering the clinics expenses related to delivering the medication or service.',
  `dispensingFeeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related DispensingFee entity.',
  `groupId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Group entity.',
  `includedInMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product is included in medical record.',
  `includedOnInvoice` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this products settings are included on invoice.',
  `inventoryProductSettingId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related InventoryProductSetting entity.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this clinic product is active.',
  `isComboVaccination` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this instance is combo vaccination, a mix of two or more vaccinations.',
  `isControlled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this clinic product is controlled.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this clinic product is discountable.',
  `isMicrochip` TINYINT(1) DEFAULT NULL COMMENT 'Value that indicates whether the clinic product is a microchip.',
  `isPetAssureDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this clinic product is Pet Assure discountable.',
  `isRabiesVaccine` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this vaccine is for rabies.',
  `isTaxable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this clinic product is taxable.',
  `manufacturer` TEXT DEFAULT NULL COMMENT 'The manufacturer of the clinic product.',
  `markup` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The markup of the clinic product.  Markup refers to the percentage added to the cost price to determine the selling price, covering expenses and generating profit.  It is expressed as a percentage from 0 to 100.',
  `minPrice` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The minimum price of clinic product.',
  `prescriptionLabelTemplateId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related PrescriptionLabelTemplate entity.',
  `price` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Value of clinic product price.',
  `printerId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Printer entity.',
  `productAssignedUserTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ProductAssignedUserType entity.',
  `productId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Product entity.',
  `vaccineLotExpirationDate` DATETIME DEFAULT NULL COMMENT 'The vaccine lot expiration date.',
  `vaccineName` TEXT DEFAULT NULL COMMENT 'Name of the vaccine.',
  `vaccineProductAdministrationPeriodId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related VaccineProductAdministrationPeriod entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClinicProduct REST model';



CREATE TABLE IF NOT EXISTS `Shep_Product` (
  `administrationPeriodId` TEXT DEFAULT NULL COMMENT 'Administration period identifier.',
  `automaticTask` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether an automatic task exists for this product.  An automatic task is an action that will be triggered after the product is used.',
  `automaticTaskDueDate` INT DEFAULT NULL COMMENT 'Number of days until this automatic task is due.',
  `automaticTaskEntryPriorityStatusId` TEXT DEFAULT NULL COMMENT 'Automatic task entry priority status identifier.',
  `automaticTaskTitle` TEXT DEFAULT NULL COMMENT 'Title of the automatic task linked to the product.',
  `defaultMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product will use a default medical record note, applies only to those products  that are included in medical record.',
  `defaultMedicalRecordNote` TEXT DEFAULT NULL COMMENT 'The default medical record note associated with the product, used to document and  describe the product.',
  `dischargeInstructions` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product includes discharge instructions for patient owners  on how to act and what to do after administration of product.',
  `dischargeInstructionsText` TEXT DEFAULT NULL COMMENT 'Discharge instructions text.',
  `dispensingFeeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related DispensingFee entity.',
  `includedInMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether product is included in medical record.',
  `includedOnInvoice` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this products settings are included on invoice.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is active.',
  `isControlled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is controlled.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is discountable.',
  `isPetAssureDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is Pet Assure discountable.',
  `isTaxable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this product is taxable.',
  `name` TEXT DEFAULT NULL COMMENT 'Name of the product.',
  `price` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Product price.',
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ProductCategory entity.',
  `productTypeId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ProductType entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProductTaxRate` (
  `name` TEXT DEFAULT NULL COMMENT 'Name of product tax rate.',
  `taxRate` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Value of product tax rate.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProductTaxRate REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProductTaxRateProduct` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `clinicProduct` TEXT DEFAULT NULL,
  `clinicProductId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ClinicProduct entity.',
  `groupId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Group entity.',
  `product` TEXT DEFAULT NULL,
  `productId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Product entity.',
  `productTaxRate` TEXT DEFAULT NULL,
  `productTaxRateId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related ProductTaxRate entity.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProductTaxRateProduct REST model';



CREATE TABLE IF NOT EXISTS `Shep_ProductTaxRateProductFilt` (
  `clinicProductIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of related ClinicProduct entity unique identifiers.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Used to filter ProductTaxRateProducts by their deletion status.',
  `productIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of related Product entity unique identifiers.',
  `productTaxRateIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of related ProductTaxRate entity unique identifiers.',
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProductTaxRateProduct Filter REST model.';



CREATE TABLE IF NOT EXISTS `Shep_DateTimeRangeValues` (
  `dateMax` DATETIME NOT NULL COMMENT 'The maximum DateTime value used to filter overlapping ProviderAvailabilities.',
  `dateMin` DATETIME NOT NULL COMMENT 'The minimum DateTime value used to filter overlapping ProviderAvailabilities.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='DateTimeRangeValues class';



CREATE TABLE IF NOT EXISTS `Shep_ExtraAvailabilityType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ExtraAvailabilityType REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProviderAvailability` (
  `createdByUser` TEXT DEFAULT NULL,
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Created by user id.',
  `endDate` DATETIME DEFAULT NULL COMMENT 'End date.',
  `extraAvailabilityType` TEXT DEFAULT NULL,
  `extraAvailabilityTypeId` TEXT DEFAULT NULL COMMENT 'Extra availability type identifier.',
  `isMultiple` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this ProviderAvailabilty is applied for multiple days.',
  `providerAvailabilityBreaks` JSON DEFAULT NULL COMMENT 'Provider availability breaks.',
  `providerId` TEXT DEFAULT NULL COMMENT 'Provider identifier. When the provider identifier ProviderId is null it will show clinic  availability or office closures. Clinic availability will be set in routine availabilities. Office  closures will be set in extra availabilities.',
  `routineAvailabilityType` TEXT DEFAULT NULL,
  `routineAvailabilityTypeId` TEXT DEFAULT NULL COMMENT 'Routine availability type identifier.',
  `startDate` DATETIME DEFAULT NULL COMMENT 'Start date.',
  `validFromDate` DATETIME DEFAULT NULL COMMENT 'This date marks date from which this provider availability is valid.',
  `validToDate` DATETIME DEFAULT NULL COMMENT 'This date marks date to which this provider availability is valid.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProviderAvailability REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProviderAvailabilityBreak` (
  `endDate` DATETIME DEFAULT NULL COMMENT 'End date.',
  `providerAvailabilityId` TEXT DEFAULT NULL COMMENT 'Provider availability identifier.',
  `startDate` DATETIME DEFAULT NULL COMMENT 'Start date.',
  `validFromDate` DATETIME DEFAULT NULL COMMENT 'This date marks date from which this provider availability is valid.',
  `validToDate` DATETIME DEFAULT NULL COMMENT 'This date marks date to which this provider availability is valid.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProviderAvailabilityBreak REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProviderAvailabilityTimeSl` (
  `endDate` DATETIME NOT NULL COMMENT 'The end of the date range filter.',
  `filterActiveAppointments` TINYINT(1) DEFAULT NULL COMMENT 'If set to true, Canceled and Deleted appointments will not be returned.',
  `providerIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of provider identifiers to filter on. If not provided, all providers are returned.',
  `startDate` DATETIME NOT NULL COMMENT 'The start of the date range filter.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProviderAvailabilityTimeSlotFilterModel class';



CREATE TABLE IF NOT EXISTS `Shep_ProviderTimeSlotAvailabili` (
  `available` JSON DEFAULT NULL COMMENT 'Time slots in which Provider is available.',
  `break` JSON DEFAULT NULL COMMENT 'Time slots in which Provider has break.',
  `clinicBreak` JSON DEFAULT NULL COMMENT 'Time slots in which Clinic has break.',
  `end` JSON DEFAULT NULL COMMENT 'The end time slot.',
  `officeClosure` JSON DEFAULT NULL COMMENT 'Time slots of the office closure.',
  `providerId` TEXT DEFAULT NULL COMMENT 'The provider unique identifier.',
  `unavailable` JSON DEFAULT NULL COMMENT 'Time slots in which provider is unavailable.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProviderTimeSlotAvailability item REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProviderTimeSlotAvailabili` (
  `item` JSON DEFAULT NULL COMMENT 'The list of time slots for providers.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProviderTimeSlotAvailability REST model.';



CREATE TABLE IF NOT EXISTS `Shep_RoutineAvailabilityType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RoutineAvailabilityType REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `licenseNumber` TEXT DEFAULT NULL COMMENT 'License number.',
  `prefix` TEXT DEFAULT NULL COMMENT 'The prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'The suffix.',
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User rest model.';



CREATE TABLE IF NOT EXISTS `Shep_Provider` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Clinic identifier.',
  `color` TEXT DEFAULT NULL COMMENT 'Color code.',
  `doctor` TEXT DEFAULT NULL,
  `doctorId` TEXT DEFAULT NULL COMMENT 'Doctor identifier.',
  `initials` TEXT DEFAULT NULL COMMENT 'Providers initials.',
  `isArchived` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this provider is archived. User can unarchive a provider.',
  `isReliefDoctor` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this provider is a relief doctor.',
  `name` TEXT DEFAULT NULL COMMENT 'Provider name.',
  `pav2User` TEXT DEFAULT NULL,
  `sortOrder` INT DEFAULT NULL COMMENT 'Sort order.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Provider REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_RateLimitResponse` (
  `remainingRequestsThisHour` INT DEFAULT NULL COMMENT 'The number of requests you are allowed to do in the current hour before receiving rate limit errors',
  `remainingRequestsThisMinute` INT DEFAULT NULL COMMENT 'The number of requests you are allowed to do in the current minute before receiving rate limit errors',
  `requestsPerHour` INT DEFAULT NULL COMMENT 'The total number of requests you are allowed to do each hour before receiving rate limit errors',
  `requestsPerMinute` INT DEFAULT NULL COMMENT 'The total number of requests you are allowed to do each minute before receiving rate limit errors'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Rate limit response model.';



CREATE TABLE IF NOT EXISTS `Shep_ReferralSource` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the clinic.',
  `description` TEXT DEFAULT NULL COMMENT 'The Description of the Referral Source.',
  `email` TEXT DEFAULT NULL COMMENT 'Referral sources Email address.',
  `groupId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the Group.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Sets the IsActive status for Referral Source. If active returns true, inactive returns false.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name of the Referral Source.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Referral Source REST model.';



CREATE TABLE IF NOT EXISTS `Shep_MedicationVolume` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MedicationVolume REST model';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `licenseNumber` TEXT DEFAULT NULL COMMENT 'License number.',
  `prefix` TEXT DEFAULT NULL COMMENT 'The prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'The suffix.',
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User rest model.';



CREATE TABLE IF NOT EXISTS `Shep_Refill` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdByPav2User` TEXT DEFAULT NULL,
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Created by user identifier.',
  `dateFilled` DATETIME DEFAULT NULL COMMENT 'Date when prescription was filled based on this refill.',
  `direction` TEXT DEFAULT NULL COMMENT 'Direction, explaining how to use the product/medication.',
  `editedByPav2User` TEXT DEFAULT NULL,
  `editedByUserId` TEXT DEFAULT NULL COMMENT 'Edited by user identifier.',
  `expirationDate` DATETIME DEFAULT NULL COMMENT 'Expiration date.',
  `isEditLabel` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this refills is label is edited.',
  `isInitial` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this refill is initial.',
  `lastRefillDate` DATETIME DEFAULT NULL COMMENT 'Last refill date.',
  `medicationVolume` TEXT DEFAULT NULL,
  `medicationVolumeId` TEXT DEFAULT NULL COMMENT 'Medication volume identifier.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of refill.',
  `pav2User` TEXT DEFAULT NULL,
  `prescribingDoctor` TEXT DEFAULT NULL,
  `prescribingDoctorId` TEXT DEFAULT NULL COMMENT 'Precribing doctor identifier.',
  `prescriptionId` TEXT DEFAULT NULL COMMENT 'Prescription (Rx) identifier.',
  `refillCanceledNote` TEXT DEFAULT NULL COMMENT 'Refill canceled note.',
  `refillDate` DATETIME DEFAULT NULL COMMENT 'Refill date.',
  `refillDeniedNote` TEXT DEFAULT NULL COMMENT 'Refill denied note.',
  `refillPrn` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this prescription supports PRN refills.',
  `refillQuantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Refill quantity.',
  `refillStatus` TEXT DEFAULT NULL,
  `refillStatusId` TEXT DEFAULT NULL COMMENT 'Refill status identifier.',
  `requestedBy` TEXT DEFAULT NULL,
  `requestedById` TEXT DEFAULT NULL COMMENT 'Requested by user identifier.',
  `requestedByPav2User` TEXT DEFAULT NULL,
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Refill REST model.';



CREATE TABLE IF NOT EXISTS `Shep_RefillStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RefillStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Client` (
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this client is deleted.',
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Client REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Patient` (
  `dateDeceased` DATETIME DEFAULT NULL COMMENT 'Date deceased.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `dateOfBirth` DATETIME DEFAULT NULL COMMENT 'Date of birth.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this patient is deleted.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier (Patient ID on the patient profile).',
  `name` TEXT DEFAULT NULL COMMENT 'Patient name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Patient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Product` (
  `name` TEXT DEFAULT NULL COMMENT 'Product name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Reminder` (
  `client` TEXT DEFAULT NULL,
  `clientId` TEXT DEFAULT NULL COMMENT 'Client identifier.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dateDue` DATETIME DEFAULT NULL COMMENT 'Reminders due date.',
  `dateTriggered` DATETIME DEFAULT NULL COMMENT 'Date triggered.',
  `isCompleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder is complete.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder is deleted.',
  `patient` TEXT DEFAULT NULL,
  `patientId` TEXT DEFAULT NULL COMMENT 'Patient identifier.',
  `reminderNotifications` JSON DEFAULT NULL COMMENT 'Reminder notifications.',
  `reminderSetting` TEXT DEFAULT NULL,
  `reminderSettingId` TEXT DEFAULT NULL COMMENT 'Reminder setting identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Reminder REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ReminderNotification` (
  `dueDate` INT DEFAULT NULL COMMENT 'Time between reminder and its notification.',
  `isBefore` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder notification will be sent before/after reminders date.',
  `sendDate` DATETIME DEFAULT NULL COMMENT 'Date when the notification will be sent.',
  `timeUnit` TEXT DEFAULT NULL,
  `timeUnitId` TEXT DEFAULT NULL COMMENT 'Time unit identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ReminderNotification REST model';



CREATE TABLE IF NOT EXISTS `Shep_ReminderSetting` (
  `autoCompleteProducts` JSON DEFAULT NULL COMMENT 'Automatic complete products. When a product from this list is administered it will automatically  complete this reminder in the patient profile.',
  `dueDate` INT DEFAULT NULL COMMENT 'Due date.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder setting is active.',
  `isCustom` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder setting is custom.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder setting is deleted.',
  `name` TEXT DEFAULT NULL COMMENT 'Reminder setting name.',
  `timeUnit` TEXT DEFAULT NULL,
  `timeUnitId` TEXT DEFAULT NULL COMMENT 'Time unit identifier.',
  `triggerProduct` TEXT DEFAULT NULL,
  `triggerProductId` TEXT DEFAULT NULL COMMENT 'Trigger product identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ReminderSetting REST model.';



CREATE TABLE IF NOT EXISTS `Shep_TimeUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TimeUnit REST model';



CREATE TABLE IF NOT EXISTS `Shep_ReminderNotification` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dueDate` INT DEFAULT NULL COMMENT 'Time between reminder and its notification.',
  `isBefore` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder notification will be sent before/after reminders date.',
  `reminderId` TEXT DEFAULT NULL COMMENT 'Reminder identifier.',
  `sendDate` DATETIME DEFAULT NULL COMMENT 'Date when the notification will be sent.',
  `timeUnit` TEXT DEFAULT NULL,
  `timeUnitId` TEXT DEFAULT NULL COMMENT 'Time unit identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ReminderNotification REST model.';



CREATE TABLE IF NOT EXISTS `Shep_TimeUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TimeUnit REST model';



CREATE TABLE IF NOT EXISTS `Shep_ReminderNotificatio` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dueDate` INT DEFAULT NULL COMMENT 'Gets or sets the due date of the reminder notification setting. Specifies the time period (in days, weeks, months or years) relative to when the notification should be sent.  The exact time of sending depends on the {Baasic.Module.PAV2.OpenAPI.Controllers.Shep_ReminderNotificationSetting.IsBefore} property.',
  `isBefore` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether the notification should be sent before the reminders due date.',
  `reminderSettingId` TEXT DEFAULT NULL COMMENT 'Gets or sets the reminder setting identifier.',
  `timeUnit` TEXT DEFAULT NULL,
  `timeUnitId` TEXT DEFAULT NULL COMMENT 'Gets or sets the time unit identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ReminderNotificationSetting REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ReminderNotificatio` (
  `reminderSettingIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing reminder settings that you wish to include in your search. Defaults to null.',
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Reminder Notification Setting Filter REST model';



CREATE TABLE IF NOT EXISTS `Shep_TimeUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TimeUnit REST model';



CREATE TABLE IF NOT EXISTS `Shep_Product` (
  `name` TEXT DEFAULT NULL COMMENT 'Product name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ReminderSetting` (
  `autoCompleteProducts` JSON DEFAULT NULL COMMENT 'Automatic complete products.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `dueDate` INT DEFAULT NULL COMMENT 'Due date.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder setting is active.',
  `isCustom` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder setting is custom.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this reminder setting is deleted.',
  `name` TEXT DEFAULT NULL COMMENT 'Reminder setting name.',
  `reminderNotificationSettings` JSON DEFAULT NULL COMMENT 'Reminder notification setting.',
  `timeUnit` TEXT DEFAULT NULL,
  `timeUnitId` TEXT DEFAULT NULL COMMENT 'Time unit identifier.',
  `triggerProduct` TEXT DEFAULT NULL,
  `triggerProductId` TEXT DEFAULT NULL COMMENT 'Trigger product identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ReminderSetting REST model.';



CREATE TABLE IF NOT EXISTS `Shep_TimeUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TimeUnit REST model';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDesignationType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SNOMED Designation Type lookup REST model';



CREATE TABLE IF NOT EXISTS `Shep_DischargeInstruction` (
  `description` TEXT DEFAULT NULL COMMENT 'The description.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is active.',
  `snomedDiagnosisDescriptionId` TEXT DEFAULT NULL COMMENT 'SNOMED diagnosis description id.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='DischargeInstruction REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDesignationType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedDesignationType lookup REST model';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagnosis` (
  `snomedConceptId` TEXT DEFAULT NULL COMMENT 'SNOMED concept identifier.',
  `snomedDiagnosisDescriptions` JSON DEFAULT NULL COMMENT 'SNOMED diagnosis descriptions.',
  `snomedSubsetType` TEXT DEFAULT NULL,
  `subsetTypeId` TEXT DEFAULT NULL COMMENT 'SNOMED Subset type id.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedDiagnosis REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagnosisDescription` (
  `description` TEXT DEFAULT NULL COMMENT 'Description.',
  `designationTypeId` TEXT DEFAULT NULL COMMENT 'SNOMED designation type id.',
  `diagnosisDischargeInstruction` TEXT DEFAULT NULL,
  `diagnosisDischargeInstructions` JSON DEFAULT NULL COMMENT 'Discharge instructions.',
  `diagnosisId` TEXT DEFAULT NULL COMMENT 'The Diagnosis id.',
  `dischargeInstructionIsActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether [discharge instruction is active].',
  `snomedDescriptionId` TEXT DEFAULT NULL COMMENT 'SNOMED description identifier.',
  `snomedDesignationType` TEXT DEFAULT NULL,
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedDescription REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SnomedSubsetType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedSubsetType lookup REST model';



CREATE TABLE IF NOT EXISTS `Shep_DiagnosisDischargeIn` (
  `description` TEXT DEFAULT NULL COMMENT 'The Description of this instance',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is active.',
  `snomedDiagnosisDescriptionId` TEXT DEFAULT NULL COMMENT 'Identifier of the SNOMED Diagnosis Description',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Discharge Instruction REST model.';



CREATE TABLE IF NOT EXISTS `Shep_DiagnosisDischarges` (
  `withDischarges` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether [with discharge].',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Diagnosis Discharges REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDesignationTyp` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SNOMED Designation Type lookup REST model';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagnosis` (
  `snomedConceptId` TEXT DEFAULT NULL COMMENT 'SNOMED concept identifier.',
  `snomedSubsetType` TEXT DEFAULT NULL,
  `snomedSubsetTypeId` TEXT DEFAULT NULL COMMENT 'SNOMED subset type id.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedDiagnosis REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagnosisDescr` (
  `description` TEXT DEFAULT NULL COMMENT 'The description of this instance.',
  `designationTypeId` TEXT DEFAULT NULL COMMENT 'SNOMED designation type id.',
  `diagnosisDischargeInstruction` TEXT DEFAULT NULL,
  `diagnosisDischargeInstructions` JSON DEFAULT NULL COMMENT 'Diagnosis discharge instructions.',
  `diagnosisDischarges` JSON DEFAULT NULL COMMENT 'Gets or sets discharge instructions.',
  `diagnosisId` TEXT DEFAULT NULL COMMENT 'SNOMED diagnosis identifier.',
  `dischargeInstructionDescription` TEXT DEFAULT NULL COMMENT 'The discharge instruction description.',
  `dischargeInstructionIsActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether [discharge instruction is active].',
  `snomedDescriptionId` TEXT DEFAULT NULL COMMENT 'SNOMED description identifier.',
  `snomedDesignationType` TEXT DEFAULT NULL,
  `snomedDiagnosis` TEXT DEFAULT NULL,
  `withDischarges` TINYINT(1) DEFAULT NULL COMMENT 'A Value Indicating whether [with discharges].',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Snomed Diagnosis Description REST Model';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagnosisDescr` (
  `snomedDesignationTypeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of SNOMED Designation Type identifiers. Defaults to null.',
  `snomedDiagnosisIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of SNOMED Diagnosis identifiers. Defaults to null.',
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SNOMED Diagnosis Description Filter Model';



CREATE TABLE IF NOT EXISTS `Shep_SnomedSubsetType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedSubsetType lookup REST model';



CREATE TABLE IF NOT EXISTS `Shep_SnomedSubsetType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedSubsetType lookup REST model';



CREATE TABLE IF NOT EXISTS `Shep_Prognosis` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Prognosis REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagnosisDescription` (
  `description` TEXT DEFAULT NULL COMMENT 'Description of the diagnosis.',
  `diagnosisId` TEXT DEFAULT NULL COMMENT 'Diagnosis identifier.',
  `snomedDescriptionId` TEXT DEFAULT NULL COMMENT 'Snomed description identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedDiagnosesDescription REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapAssessment` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `description` TEXT DEFAULT NULL COMMENT 'Description of the assessment.',
  `prognosisHigh` TEXT DEFAULT NULL,
  `prognosisHighId` TEXT DEFAULT NULL COMMENT 'Initial prognosis identifier.',
  `prognosisLow` TEXT DEFAULT NULL,
  `prognosisLowId` TEXT DEFAULT NULL COMMENT 'New prognosis identifier.',
  `soapAssessmentDiagnosisDescriptions` JSON DEFAULT NULL COMMENT 'SOAP assessment diagnoses descriptions, contains all info on problems, diagnoses and chronic condition(s).',
  `soapId` TEXT DEFAULT NULL COMMENT 'SOAP identifier. This is also the primary key of SoapAssessment.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapAssessment REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapAssessmentDiagnosisDescripti` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `name` TEXT DEFAULT NULL COMMENT 'Name.',
  `snomedDiagnosisDescription` TEXT DEFAULT NULL,
  `soapAssessmentDiagnosisType` INT DEFAULT NULL COMMENT 'Type of the SOAP assessment diagnosis; 0 for Problem, 1 for Diagnosis and 2 for  Chronic Condition.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapAssessmentDiagnosisDescription REST model.';



CREATE TABLE IF NOT EXISTS `Shep_DischargeIns` (
  `description` TEXT DEFAULT NULL COMMENT 'The description.',
  `isActive` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this instance is active.',
  `snomedDiagnosisDescriptionId` TEXT DEFAULT NULL COMMENT 'SNOMED diagnosis description id.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='DischargeInstruction REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Prognosis` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Prognosis REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SnomedDiagno` (
  `description` TEXT DEFAULT NULL COMMENT 'Gets or sets description.',
  `designationTypeId` TEXT DEFAULT NULL COMMENT 'SNOMED Designation Type id.',
  `diagnosisDischargeInstruction` TEXT DEFAULT NULL,
  `diagnosisDischargeInstructions` JSON DEFAULT NULL COMMENT 'Gets or sets discharge instructions.',
  `diagnosisId` TEXT DEFAULT NULL COMMENT 'Gets or sets diagnosis id.',
  `snomedDescriptionId` TEXT DEFAULT NULL COMMENT 'Gets or sets SNOMED description identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SnomedDescription REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Soap` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Owner identifier.',
  `dateCheckedIn` DATETIME DEFAULT NULL COMMENT 'Date checked in.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this soap is deleted.',
  `invoiceId` TEXT DEFAULT NULL COMMENT 'Invoice identifier.',
  `locationId` TEXT DEFAULT NULL COMMENT 'Location identifier.',
  `patientId` TEXT DEFAULT NULL COMMENT 'Patient id.',
  `soapStatusId` TEXT DEFAULT NULL COMMENT 'SOAP status identifier.',
  `supervisingDoctorId` TEXT DEFAULT NULL COMMENT 'Supervising doctor identifier.',
  `title` TEXT DEFAULT NULL COMMENT 'Soap title.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapAssessme` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `description` TEXT DEFAULT NULL COMMENT 'Description of the assessment.',
  `prognosisHigh` TEXT DEFAULT NULL,
  `prognosisHighId` TEXT DEFAULT NULL COMMENT 'Initial prognosis identifier.',
  `prognosisLow` TEXT DEFAULT NULL,
  `prognosisLowId` TEXT DEFAULT NULL COMMENT 'New prognosis identifier.',
  `soapId` TEXT DEFAULT NULL COMMENT 'SOAP identifier. This is also the primary key of SoapAssessment.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapAssessment REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapAssessme` (
  `name` TEXT DEFAULT NULL COMMENT 'Gets or sets the name.',
  `snomedDiagnosisDescription` TEXT DEFAULT NULL,
  `snomedDiagnosisDescriptionId` TEXT DEFAULT NULL COMMENT 'Gets or sets the snomed diagnosis description identifier.',
  `soap` TEXT DEFAULT NULL,
  `soapAssessment` TEXT DEFAULT NULL,
  `soapAssessmentDiagnosisType` INT DEFAULT NULL COMMENT 'Gets or sets the type of the SOAP assessment diagnosis.',
  `soapAssessmentId` TEXT DEFAULT NULL COMMENT 'Gets or sets the SOAP assessment identifier.',
  `soapDischargeInstructions` JSON DEFAULT NULL COMMENT 'Gets or sets the SOAP discharge instructions.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap Assessment Diagnosis Description REST Model';



CREATE TABLE IF NOT EXISTS `Shep_SoapAssessme` (
  `diagnosisIds` TEXT DEFAULT NULL COMMENT 'Gets or sets the diagnosis ids.',
  `snomedDiagnosisDescriptionIds` TEXT DEFAULT NULL COMMENT 'Gets or sets the SNOMED diagnosis description identifiers.',
  `soapAssessmentDiagnosisType` INT DEFAULT NULL COMMENT 'Gets or sets the type of the SOAP assessment diagnosis.',
  `soapAssessmentIds` TEXT DEFAULT NULL COMMENT 'Gets or sets the Soap Assessment identifiers',
  `soapIds` TEXT DEFAULT NULL COMMENT 'Gets or sets the SOAP ids.',
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap Assessment Diagnosis Description Filter REST Model';



CREATE TABLE IF NOT EXISTS `Shep_SoapDischarg` (
  `assessmentDiagnosisDescId` TEXT DEFAULT NULL COMMENT 'Assessment diagnosis desc identifier.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating weather this SOAP treatment note is deleted.',
  `description` TEXT DEFAULT NULL COMMENT 'HTML representation of description.',
  `name` TEXT DEFAULT NULL COMMENT 'Name.',
  `productId` TEXT DEFAULT NULL COMMENT 'Product identifier. When discharge instruction is from a product that is added to soap, it will have a productId.',
  `soapId` TEXT DEFAULT NULL COMMENT 'SOAP identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapDischargeInstruction REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `isDoctor` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this user is a doctor.',
  `prefix` TEXT DEFAULT NULL COMMENT 'The prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'The suffix.',
  `userLicenseType` TEXT DEFAULT NULL,
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapAssessmentNote` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdByUser` TEXT DEFAULT NULL,
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Created by user identifier.',
  `editedByPav2User` TEXT DEFAULT NULL,
  `editedByUser` TEXT DEFAULT NULL,
  `editedByUserId` TEXT DEFAULT NULL COMMENT 'Last edited by user identifier.',
  `note` TEXT DEFAULT NULL COMMENT 'Note content.',
  `pav2User` TEXT DEFAULT NULL,
  `soapAssessmentId` TEXT DEFAULT NULL COMMENT 'SOAP assessment identifier.',
  `soapAssessmentType` INT DEFAULT NULL COMMENT 'Type of the SOAP assessment note; 0 for Laboratory, 1 for Imaging and 2 for Document note.',
  `taggedUsersIds` JSON DEFAULT NULL COMMENT 'Tagged users ids. Ids of clinic users tagged in the note. This is used so that specific user gets a  notification about that note because it might be related to that user.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapAssessmentNote REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UserLicenseType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UserLicenseType REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Location` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Location REST model';



CREATE TABLE IF NOT EXISTS `Shep_Patient` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Additional text.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Alerts.',
  `breedId` TEXT DEFAULT NULL COMMENT 'Breed identifier.',
  `color` TEXT DEFAULT NULL COMMENT 'Color.',
  `dateDeceased` DATETIME DEFAULT NULL COMMENT 'Date deceased.',
  `dateOfBirth` DATETIME DEFAULT NULL COMMENT 'Date of birth.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether patient is deleted.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'Legacy identifier.',
  `microchipNumber` TEXT DEFAULT NULL COMMENT 'Microchip number.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name property of the Patient.',
  `patientCPRStatusNote` TEXT DEFAULT NULL COMMENT 'Patient CPR status note.',
  `patientCprstatusId` TEXT DEFAULT NULL COMMENT 'Patient CPR status identifier.',
  `rabiesTag` TEXT DEFAULT NULL COMMENT 'Rabies tag.',
  `sexId` TEXT DEFAULT NULL COMMENT 'Sex identifier.',
  `statusId` TEXT DEFAULT NULL COMMENT 'Status identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The Patient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `licenseNumber` TEXT DEFAULT NULL COMMENT 'License number.',
  `prefix` TEXT DEFAULT NULL COMMENT 'The prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'The suffix.',
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User rest model.';



CREATE TABLE IF NOT EXISTS `Shep_Soap` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Owner identifier.',
  `dateCheckedIn` DATETIME DEFAULT NULL COMMENT 'Date checked in.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this soap is deleted.',
  `invoiceId` TEXT DEFAULT NULL COMMENT 'Invoice identifier.',
  `location` TEXT DEFAULT NULL,
  `locationId` TEXT DEFAULT NULL COMMENT 'Location identifier.',
  `patient` TEXT DEFAULT NULL,
  `patientId` TEXT DEFAULT NULL COMMENT 'Patient id.',
  `pav2User` TEXT DEFAULT NULL,
  `soapAssignedUsers` JSON DEFAULT NULL COMMENT 'SOAP assigned users.',
  `soapStatus` TEXT DEFAULT NULL,
  `soapStatusId` TEXT DEFAULT NULL COMMENT 'SOAP status identifier.',
  `supervisingDoctor` TEXT DEFAULT NULL,
  `supervisingDoctorId` TEXT DEFAULT NULL COMMENT 'Supervising doctor identifier.',
  `title` TEXT DEFAULT NULL COMMENT 'Soap title.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapAssignedUser` (
  `coreUser` TEXT DEFAULT NULL,
  `pav2User` TEXT DEFAULT NULL,
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SOAP assigned user REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapStatus REST model';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapDischargeInstructi` (
  `assessmentDiagnosisDescId` TEXT DEFAULT NULL COMMENT 'Assessment diagnosis desc identifier.',
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating weather this SOAP treatment note is deleted.',
  `description` TEXT DEFAULT NULL COMMENT 'HTML representation of description.',
  `name` TEXT DEFAULT NULL COMMENT 'Name.',
  `productId` TEXT DEFAULT NULL COMMENT 'Product identifier. When discharge instruction is from a product that is added to soap, it will have a productId.',
  `soapId` TEXT DEFAULT NULL COMMENT 'SOAP identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapDischargeInstruction REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapDischargeInstructi` (
  `assessmentDiagnosisDescIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of AssessmentDiagnosisDesc identifiers.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Filters by deleted status. Defaults to null (fetches both deleted and non-deleted entities).',
  `productIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Product identifiers.',
  `searchQuery` TEXT DEFAULT NULL COMMENT 'Filters by Name and Description.',
  `soapIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Soap ids.',
  `dateCreatedFrom` DATETIME DEFAULT NULL COMMENT 'Sets the start of the date range filter on the entity creation date. Defaults to null.',
  `dateCreatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity creation date. Defaults to null.',
  `dateUpdatedFrom` DATETIME DEFAULT NULL COMMENT 'The start of the date range filter on the entity last update date. Defaults to null.',
  `dateUpdatedTo` DATETIME DEFAULT NULL COMMENT 'The end of the date range filter on the entity last update date. Defaults to null.',
  `embed` TEXT DEFAULT NULL COMMENT 'Comma-separated list of embedded properties to fetch. Nested fetches are achieved using dots. Defaults to null.',
  `excludeIds` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to exclude from your search. Defaults to null.',
  `ids` TEXT DEFAULT NULL COMMENT 'Comma-separated list of Ids representing entities that you wish to include in your search. Defaults to null.',
  `page` INT DEFAULT NULL COMMENT 'The page number. Defaults to 1.',
  `rpp` INT DEFAULT NULL COMMENT 'The number of items to return per page. The max is 1000. Defaults to 10.',
  `sort` TEXT DEFAULT NULL COMMENT 'Which field to sort by. Needs to be in field|order format, where order is either asc or desc. Default  depends on endpoint, usually id|asc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapDischargeInstruction filter model.';



CREATE TABLE IF NOT EXISTS `Shep_BodyMap` (
  `name` TEXT DEFAULT NULL COMMENT 'Name of body map.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BodyMap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_BodyMapDrawing` (
  `mediaVaultEntryId` TEXT DEFAULT NULL COMMENT 'Media vault entry identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BodyMapDrawing REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ClinicBodyMap` (
  `bodyMap` TEXT DEFAULT NULL,
  `bodyMapId` TEXT DEFAULT NULL COMMENT 'Body map identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ClinicBodyMap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_CoreUser` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Core User REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `isDoctor` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this user is doctor.',
  `prefix` TEXT DEFAULT NULL COMMENT 'Prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'Suffix.',
  `userLicenseType` TEXT DEFAULT NULL,
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PhysicalExam` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `coreUser` TEXT DEFAULT NULL,
  `creationDate` DATETIME DEFAULT NULL COMMENT 'Creation date.',
  `note` TEXT DEFAULT NULL COMMENT 'Note.',
  `pav2User` TEXT DEFAULT NULL,
  `physicalExamClinicBodyMaps` JSON DEFAULT NULL COMMENT 'Physical exam clinic body maps.',
  `physicalExamTemplate` TEXT DEFAULT NULL,
  `physicalExamTemplateId` TEXT DEFAULT NULL COMMENT 'Physical exam template identifier.',
  `schema` TEXT DEFAULT NULL COMMENT 'Schema.',
  `soap` TEXT DEFAULT NULL,
  `soapId` TEXT DEFAULT NULL COMMENT 'SOAP identifier.',
  `soapObjectiveId` TEXT DEFAULT NULL COMMENT 'SOAP objective identifier. SoapObjectiveId is the same as the SoapId.',
  `supervisingDoctorId` TEXT DEFAULT NULL COMMENT 'Supervising doctor identifier.',
  `title` TEXT DEFAULT NULL COMMENT 'Title.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PHysicalExam REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PhysicalExamClinicBodyMap` (
  `bodyMapDrawing` TEXT DEFAULT NULL,
  `bodyMapDrawingId` TEXT DEFAULT NULL COMMENT 'Body map drawing identifier.',
  `clinicBodyMap` TEXT DEFAULT NULL,
  `clinicBodyMapId` TEXT DEFAULT NULL COMMENT 'Clinic body map identifier.',
  `isFromTemplate` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this physical exam clinic body map is from template.',
  `physicalExamId` TEXT DEFAULT NULL COMMENT 'Physical exam identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PhysicalExamClinicBodyMap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_PhysicalExamTemplate` (
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this physical exam template is deleted.',
  `name` TEXT NOT NULL COMMENT 'Name.',
  `schema` JSON DEFAULT NULL COMMENT 'Schema.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PhsicalExamTemplate REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Soap` (
  `dateCheckedIn` DATETIME DEFAULT NULL COMMENT 'Date of patient check in for this soap.',
  `id` TEXT DEFAULT NULL COMMENT 'SOAP identifier.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UserLicenseType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UserLicenseType REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Patient` (
  `additionalText` TEXT DEFAULT NULL COMMENT 'Additional text.',
  `alerts` TEXT DEFAULT NULL COMMENT 'Alerts.',
  `breedId` TEXT DEFAULT NULL COMMENT 'Breed identifier.',
  `color` TEXT DEFAULT NULL COMMENT 'Color.',
  `dateDeceased` DATETIME DEFAULT NULL COMMENT 'Date deceased.',
  `dateOfBirth` DATETIME DEFAULT NULL COMMENT 'Date of birth.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether patient is deleted.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier.',
  `legacyId` TEXT DEFAULT NULL COMMENT 'Legacy identifier.',
  `microchipNumber` TEXT DEFAULT NULL COMMENT 'Microchip number.',
  `name` TEXT DEFAULT NULL COMMENT 'The Name property of the Patient.',
  `patientCPRStatusNote` TEXT DEFAULT NULL COMMENT 'Patient CPR status note.',
  `patientCprstatusId` TEXT DEFAULT NULL COMMENT 'Patient CPR status identifier.',
  `rabiesTag` TEXT DEFAULT NULL COMMENT 'Rabies tag.',
  `sexId` TEXT DEFAULT NULL COMMENT 'Sex identifier.',
  `statusId` TEXT DEFAULT NULL COMMENT 'Status identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The Patient REST model.';



CREATE TABLE IF NOT EXISTS `Shep_ProductType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProductType REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Soap` (
  `patient` TEXT DEFAULT NULL,
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The Soap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapPlan` (
  `clinicId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the related Clinic entity.',
  `id` TEXT DEFAULT NULL COMMENT 'SoapId is the primary key of SoapPlan.',
  `recommendation` TEXT DEFAULT NULL COMMENT 'HTML representation of the recommendation.',
  `soap` TEXT DEFAULT NULL,
  `soapId` TEXT DEFAULT NULL COMMENT 'SOAP identifier. SoapId is the primary key of SoapPlan.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapPlan REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapPlanNote` (
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Identifier of the user that created the Plan Note.',
  `editedByUserId` TEXT DEFAULT NULL COMMENT 'Identifier of the latest user that edited the Plan Note.',
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'A value indicating whether this {Baasic.Module.PAV2.Model.Common.ISoapPlanNote} is deleted.',
  `note` TEXT DEFAULT NULL COMMENT 'HTML representation of the Note.',
  `soapPlan` TEXT DEFAULT NULL,
  `soapPlanId` TEXT DEFAULT NULL COMMENT 'SOAP Plan identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapPlanNote REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapTreatment` (
  `additionalInstruction` TEXT DEFAULT NULL COMMENT 'Additional instructions about this treatment.',
  `administeredById` TEXT DEFAULT NULL COMMENT 'Administered by identifier.',
  `concentration` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Concentration.',
  `dateDeclined` DATETIME DEFAULT NULL COMMENT 'Gets or sets the date declined.',
  `defaultDiscountAmount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Default discount amount.',
  `defaultDiscountNote` TEXT DEFAULT NULL COMMENT 'Default discount note.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating weather this treatment is deleted.',
  `dispensingFee` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Dispensing fee.',
  `dispensingFeeId` TEXT DEFAULT NULL COMMENT 'Dispensing fee identifier.',
  `dose` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Dose.',
  `identifier` TEXT DEFAULT NULL COMMENT 'Identifier.',
  `idexxOrderId` TEXT DEFAULT NULL COMMENT 'Idexx order identifier.',
  `imagingIntegrationOrderId` TEXT DEFAULT NULL COMMENT 'Imaging integration order identifier.',
  `includedInMedicalRecord` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether thi treatment is included in medical record.',
  `includedOnInvoice` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is included on invoice.',
  `invoiceItemId` TEXT DEFAULT NULL COMMENT 'Invoice item identifier.',
  `isAdministeredDirectly` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is administered directly.',
  `isClientMedication` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is client medication.',
  `isControlled` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is controlled.',
  `isDeclined` TINYINT(1) DEFAULT NULL COMMENT 'Gets or sets a value indicating whether this instance is declined.',
  `isDefaultDiscount` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is applying default discount as a whole number in price.',
  `isDefaultDiscountPercent` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is applying default discount as a percent.',
  `isDiscountable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is discountable.',
  `isParentTreatment` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is a parent treatment.',
  `isStaticPriceBundleTreatment` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is a static price bundle treatment.',
  `isStopped` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is stopped.',
  `isTaxable` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this treatment is taxable.',
  `labIntegrationOrderId` TEXT DEFAULT NULL COMMENT 'Lab integration order identifier.',
  `lotNumber` TEXT DEFAULT NULL COMMENT 'Lot number.',
  `manufacturer` TEXT DEFAULT NULL COMMENT 'Manufacturer.',
  `medicationUnitId` TEXT DEFAULT NULL COMMENT 'Medication unit identifier.',
  `medicationVolumeId` TEXT DEFAULT NULL COMMENT 'Medication Volume identifier.',
  `minPrice` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Minimum price.',
  `name` TEXT DEFAULT NULL COMMENT 'Name.',
  `parentTreatmentId` TEXT DEFAULT NULL COMMENT 'Parent treatment identifier.',
  `price` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Price.',
  `productBundleId` TEXT DEFAULT NULL COMMENT 'Product bundle identifier.',
  `productCategoryId` TEXT DEFAULT NULL COMMENT 'Gets or sets the product category identifier.',
  `productId` TEXT DEFAULT NULL COMMENT 'Product identifier.',
  `productType` TEXT DEFAULT NULL,
  `productTypeId` TEXT DEFAULT NULL COMMENT 'Product type identifier.',
  `quantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Quantity.',
  `revision` BIGINT DEFAULT NULL COMMENT 'Revision.',
  `serialNumber` TEXT DEFAULT NULL COMMENT 'Serial number.',
  `skipCubexIntegration` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether should skip cubex integration.',
  `skipImagingIntegration` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether should skip imaging integration.',
  `skipLabIntegration` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether should skip lab integration.',
  `soapActive` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether SOAP is active.',
  `soapPlan` TEXT DEFAULT NULL,
  `soapPlanId` TEXT DEFAULT NULL COMMENT 'SOAP plan identifier.',
  `timeAdministered` DATETIME DEFAULT NULL COMMENT 'Time administered.',
  `treatmentPriority` TEXT DEFAULT NULL,
  `treatmentPriorityId` TEXT DEFAULT NULL COMMENT 'Treatment priority identifier.',
  `treatmentStatus` TEXT DEFAULT NULL,
  `treatmentStatusId` TEXT DEFAULT NULL COMMENT 'Treatment status identifier.',
  `vaccineLotExpirationDate` DATETIME DEFAULT NULL COMMENT 'Vaccine lot expiration date.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapTreatment REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapTreatmentNote` (
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'The unique identifier of the user who created this instance.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating weather this SOAP treatment note is deleted.',
  `editedByUserId` TEXT DEFAULT NULL COMMENT 'Unique identifier of the user who edited this instance.',
  `note` TEXT DEFAULT NULL COMMENT 'The note.',
  `soapTreatment` TEXT DEFAULT NULL,
  `soapTreatmentId` TEXT DEFAULT NULL COMMENT 'The SOAP treatment identifier.',
  `soapTreatmentScheduler` TEXT DEFAULT NULL,
  `soapTreatmentSchedulerId` TEXT DEFAULT NULL COMMENT 'The SOAP treatment scheduler identifier.',
  `taggedUsersIds` JSON DEFAULT NULL COMMENT 'The list of the tagged users ids.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap Treatment Note REST Model';



CREATE TABLE IF NOT EXISTS `Shep_SoapTreatmentScheduler` (
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap Treatment Scheduler REST Model';



CREATE TABLE IF NOT EXISTS `Shep_TreatmentPriority` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TreatmentPriority REST model.';



CREATE TABLE IF NOT EXISTS `Shep_TreatmentStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TreatmentStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Location` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Location REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `licenseNumber` TEXT DEFAULT NULL COMMENT 'License number.',
  `prefix` TEXT DEFAULT NULL COMMENT 'Prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'Suffix.',
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Soap` (
  `createdByUserId` TEXT DEFAULT NULL COMMENT 'Owner identifier.',
  `dateCheckedIn` DATETIME DEFAULT NULL COMMENT 'Date checked in.',
  `dateDeleted` DATETIME DEFAULT NULL COMMENT 'Date when deleted.',
  `deleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this {Baasic.Module.PAV2.OpenAPI.Controllers.Shep_Soap} is deleted.',
  `invoiceId` TEXT DEFAULT NULL COMMENT 'Invoice identifier.',
  `location` TEXT DEFAULT NULL,
  `locationId` TEXT DEFAULT NULL COMMENT 'Location identifier.',
  `patientId` TEXT DEFAULT NULL COMMENT 'Patient id.',
  `pav2User` TEXT DEFAULT NULL,
  `soapAssignedUsers` JSON DEFAULT NULL COMMENT 'SOAPs assigned users.',
  `soapStatus` TEXT DEFAULT NULL,
  `soapStatusId` TEXT DEFAULT NULL COMMENT 'SOAP status identifier.',
  `supervisingDoctor` TEXT DEFAULT NULL,
  `supervisingDoctorId` TEXT DEFAULT NULL COMMENT 'Supervising doctor identifier.',
  `title` TEXT DEFAULT NULL COMMENT 'Title.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Soap REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapAssignedUser` (
  `coreUser` TEXT DEFAULT NULL,
  `pav2User` TEXT DEFAULT NULL,
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SOAP assigned user REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapStatus` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapStatus REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapSubjective` (
  `currentMedicationInfo` TEXT DEFAULT NULL COMMENT 'Current medication information.',
  `history` TEXT DEFAULT NULL COMMENT 'History.',
  `initialComplaint` TEXT DEFAULT NULL COMMENT 'Initial complaint.',
  `soap` TEXT DEFAULT NULL,
  `soapId` TEXT DEFAULT NULL COMMENT 'SOAP identifier. This is the primary key of SoapSubjective.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapSubjective REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_CapillaryRefillTime` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CapillaryRefillTime REST model';



CREATE TABLE IF NOT EXISTS `Shep_Mentation` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mentation REST model';



CREATE TABLE IF NOT EXISTS `Shep_MucousMembrane` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MucousMembrane REST model';



CREATE TABLE IF NOT EXISTS `Shep_PatientWeightEntry` (
  `weight` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Patient weight.',
  `weightUnit` TEXT DEFAULT NULL,
  `weightUnitId` TEXT DEFAULT NULL COMMENT 'Weight unit identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PatientWeightEntry REST model.';



CREATE TABLE IF NOT EXISTS `Shep_SoapVitalEntry` (
  `capillaryRefillTime` TEXT DEFAULT NULL,
  `capillaryRefillTimeId` TEXT DEFAULT NULL COMMENT 'Capillary refill time id.',
  `creationDate` DATETIME DEFAULT NULL COMMENT 'Creation date.',
  `mentation` TEXT DEFAULT NULL,
  `mentationId` TEXT DEFAULT NULL COMMENT 'Mentation identifier.',
  `mucousMembrane` TEXT DEFAULT NULL,
  `mucousMembraneId` TEXT DEFAULT NULL COMMENT 'Mucous membrane id.',
  `note` TEXT DEFAULT NULL COMMENT 'Vital entry note.',
  `patientWeightEntry` TEXT DEFAULT NULL,
  `patientWeightEntryId` TEXT DEFAULT NULL COMMENT 'Patient weight entry identifier.',
  `pulse` INT DEFAULT NULL COMMENT 'Pulse.',
  `respiratoryRate` TEXT DEFAULT NULL COMMENT 'Respiratory rate.',
  `soapObjectiveId` TEXT DEFAULT NULL COMMENT 'Soap objective id.',
  `temperature` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Temperature.',
  `temperatureUnit` TEXT DEFAULT NULL,
  `temperatureUnitId` TEXT DEFAULT NULL COMMENT 'Temperature unit identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SoapVitalEntry REST model.';



CREATE TABLE IF NOT EXISTS `Shep_TemperatureUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TemperatureUnit REST model';



CREATE TABLE IF NOT EXISTS `Shep_WeightUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='WeightUnit REST model';



CREATE TABLE IF NOT EXISTS `Shep_Species` (
  `isDeleted` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this species is deleted.',
  `isLegacy` TINYINT(1) DEFAULT NULL COMMENT 'Value indicating whether this species is legacy.',
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Species REST model';



CREATE TABLE IF NOT EXISTS `Shep_TaxRateType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'The abbreviation for the type of tax rate',
  `description` TEXT DEFAULT NULL COMMENT 'A description of the tax rate type.',
  `name` TEXT DEFAULT NULL COMMENT 'The name for the type of tax rate.',
  `sortOrder` INT DEFAULT NULL COMMENT 'The sorting order for the tax rate type.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TaxRateType REST model.';



CREATE TABLE IF NOT EXISTS `Shep_TemperatureUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Temperature Unit REST model.';



CREATE TABLE IF NOT EXISTS `Shep_TimeUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TimeUnit REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UomUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UomUnit REST model.';



CREATE TABLE IF NOT EXISTS `Shep_Pav2User` (
  `coreUser` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `licenseNumber` TEXT DEFAULT NULL COMMENT 'License number.',
  `prefix` TEXT DEFAULT NULL COMMENT 'The prefix.',
  `suffix` TEXT DEFAULT NULL COMMENT 'The suffix.',
  `userId` TEXT DEFAULT NULL COMMENT 'User identifier.',
  `userLicenseType` TEXT DEFAULT NULL,
  `userLicenseTypeId` TEXT DEFAULT NULL COMMENT 'User license type identifier.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pav2User rest model.';



CREATE TABLE IF NOT EXISTS `Shep_UserInfo` (
  `firstName` TEXT DEFAULT NULL COMMENT 'First name.',
  `id` TEXT DEFAULT NULL COMMENT 'The User unique identifier.',
  `isApproved` TINYINT(1) DEFAULT NULL COMMENT 'A status which indicates if a user is approved. If approved it will be listed under a list of Active  users in application, otherwise it will be listed under Inactive users.',
  `isLockedOut` TINYINT(1) DEFAULT NULL COMMENT 'A status indicating if a user is locked out. If true, this user wont be able to log into the application.',
  `lastName` TEXT DEFAULT NULL COMMENT 'Last name.',
  `userName` TEXT DEFAULT NULL COMMENT 'Username of the user.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CoreUser REST model.';



CREATE TABLE IF NOT EXISTS `Shep_UserLicenseType` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UserLicenseType REST model';



CREATE TABLE IF NOT EXISTS `Shep_WeightUnit` (
  `abrv` TEXT DEFAULT NULL COMMENT 'Short unique identifier for the lookup.',
  `description` TEXT DEFAULT NULL COMMENT 'The description of the lookup entry.',
  `name` TEXT DEFAULT NULL COMMENT 'The name of the lookup entry.',
  `dateCreated` DATETIME DEFAULT NULL,
  `dateUpdated` DATETIME DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `links` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Weight Unit REST model.';


