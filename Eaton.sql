USE [Eaton]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[systems]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[systems]') AND type in (N'U'))
DROP TABLE [dbo].[systems]
GO
/****** Object:  Table [dbo].[sla_tab]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sla_tab]') AND type in (N'U'))
DROP TABLE [dbo].[sla_tab]
GO
/****** Object:  Table [dbo].[self_registration]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[self_registration]') AND type in (N'U'))
DROP TABLE [dbo].[self_registration]
GO
/****** Object:  Table [dbo].[organization_entities]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[organization_entities]') AND type in (N'U'))
DROP TABLE [dbo].[organization_entities]
GO
/****** Object:  Table [dbo].[invite_users]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invite_users]') AND type in (N'U'))
DROP TABLE [dbo].[invite_users]
GO
/****** Object:  Table [dbo].[gateway_commissioning]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gateway_commissioning]') AND type in (N'U'))
DROP TABLE [dbo].[gateway_commissioning]
GO
/****** Object:  Table [dbo].[devices]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[devices]') AND type in (N'U'))
DROP TABLE [dbo].[devices]
GO
/****** Object:  Table [dbo].[customer_information]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_information]') AND type in (N'U'))
DROP TABLE [dbo].[customer_information]
GO
/****** Object:  Table [dbo].[building_entities]    Script Date: 8/12/2025 4:25:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[building_entities]') AND type in (N'U'))
DROP TABLE [dbo].[building_entities]
GO
/****** Object:  Table [dbo].[building_entities]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[building_entities](
	[building_name] [nvarchar](32) NULL,
	[building_address] [nvarchar](250) NULL,
	[address_line_01] [nvarchar](250) NULL,
	[address_line_02] [nvarchar](250) NULL,
	[postal_code] [nvarchar](10) NULL,
	[city] [nvarchar](50) NULL,
	[map] [nvarchar](255) NULL,
	[primart_contact] [nvarchar](75) NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[country_code] [nvarchar](4) NULL,
	[phone_numer] [nvarchar](10) NULL,
	[secondaryprimart_contact] [nvarchar](75) NULL,
	[first_name_1] [nvarchar](50) NULL,
	[last_name_1] [nvarchar](50) NULL,
	[country_code_1] [nvarchar](4) NULL,
	[phone_numer_1] [nvarchar](10) NULL,
	[comments_description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_information]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_information](
	[customer_group_name] [nvarchar](24) NULL,
	[customer_image] [nvarchar](1) NULL,
	[location] [nvarchar](255) NULL,
	[phone_number] [nvarchar](10) NULL,
	[comments_description] [nvarchar](255) NULL,
	[sla_details] [nvarchar](5) NULL,
	[sla_number] [nvarchar](12) NULL,
	[sla_expiry_date] [nvarchar](255) NULL,
	[system_privileges] [nvarchar](255) NULL,
	[primary_contact] [nvarchar](50) NULL,
	[primary_phone_number] [nvarchar](10) NULL,
	[secondary_phone_number] [nvarchar](10) NULL,
	[email_address] [nvarchar](75) NULL,
	[comments_description_1] [nvarchar](255) NULL,
	[secondary_contact] [nvarchar](50) NULL,
	[primary_phone_number_1] [nvarchar](10) NULL,
	[secondary_phone_number_1] [nvarchar](10) NULL,
	[email_address_1] [nvarchar](75) NULL,
	[comments_description_2] [nvarchar](255) NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[company_address_01] [nvarchar](250) NULL,
	[company_address_02] [nvarchar](250) NULL,
	[postal_code] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[devices]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[devices](
	[name] [nvarchar](255) NULL,
	[sub_location] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[pn_part_number] [nvarchar](255) NULL,
	[range] [nvarchar](255) NULL,
	[firmware_status] [nvarchar](255) NULL,
	[firmware_version] [nvarchar](255) NULL,
	[range_1] [nvarchar](255) NULL,
	[connection_status] [nvarchar](255) NULL,
	[gateway_name] [nvarchar](255) NULL,
	[test_duration_next] [nvarchar](255) NULL,
	[test_duration_previous] [nvarchar](255) NULL,
	[functional_test_next] [nvarchar](255) NULL,
	[functional_test_previous] [nvarchar](255) NULL,
	[system_type] [nvarchar](255) NULL,
	[epas] [nvarchar](255) NULL,
	[catalog_number] [nvarchar](255) NULL,
	[commissioning_date] [nvarchar](255) NULL,
	[firmware_version_1] [nvarchar](255) NULL,
	[mac_address_ip_address] [nvarchar](255) NULL,
	[system_status] [nvarchar](255) NULL,
	[gateway_attributes] [nvarchar](255) NULL,
	[location] [nvarchar](255) NULL,
	[connection_status_1] [nvarchar](255) NULL,
	[connection_type] [nvarchar](255) NULL,
	[firmware_version_2] [nvarchar](255) NULL,
	[ip_address] [nvarchar](255) NULL,
	[subnet_mask] [nvarchar](255) NULL,
	[luminaries_attributes] [nvarchar](255) NULL,
	[luminary_name] [nvarchar](255) NULL,
	[luminary_status] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[luminary_type] [nvarchar](255) NULL,
	[range_2] [nvarchar](255) NULL,
	[model] [nvarchar](255) NULL,
	[atsb] [nvarchar](255) NULL,
	[circuit] [nvarchar](255) NULL,
	[serial_number] [nvarchar](255) NULL,
	[luminary_test_attributes] [nvarchar](255) NULL,
	[test_duration] [nvarchar](255) NULL,
	[previous_duration_test_started] [nvarchar](255) NULL,
	[next_duration_test_starts] [nvarchar](255) NULL,
	[functional_test_delay] [nvarchar](255) NULL,
	[previous_functional_test_started] [nvarchar](255) NULL,
	[next_functional_test_starts] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gateway_commissioning]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gateway_commissioning](
	[gateway_name] [nvarchar](20) NULL,
	[gateway_password] [nvarchar](8) NULL,
	[gateway_confirm_password] [nvarchar](8) NULL,
	[gateway_description] [nvarchar](500) NULL,
	[organization_name_select] [nvarchar](24) NULL,
	[organization_name_create] [nvarchar](24) NULL,
	[building_name_select] [nvarchar](32) NULL,
	[building_name_create] [nvarchar](32) NULL,
	[sub_location] [nvarchar](20) NULL,
	[description] [nvarchar](20) NULL,
	[gateway_serial_number] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invite_users]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invite_users](
	[email_address] [nvarchar](75) NULL,
	[organization_name_select] [nvarchar](24) NULL,
	[role_select] [nvarchar](255) NULL,
	[building_name_select] [nvarchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[organization_entities]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organization_entities](
	[organization_name] [nvarchar](24) NULL,
	[country] [nvarchar](50) NULL,
	[address_01] [nvarchar](250) NULL,
	[address_02] [nvarchar](250) NULL,
	[postal_code] [nvarchar](10) NULL,
	[city] [nvarchar](50) NULL,
	[primary_contact] [nvarchar](75) NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[country_code] [nvarchar](255) NULL,
	[phone_number] [nvarchar](10) NULL,
	[secondaryprimart_contact] [nvarchar](75) NULL,
	[first_name_1] [nvarchar](50) NULL,
	[last_name_1] [nvarchar](50) NULL,
	[country_code_1] [nvarchar](4) NULL,
	[phone_numer] [nvarchar](10) NULL,
	[comments_description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[self_registration]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[self_registration](
	[email_address] [nvarchar](75) NULL,
	[verification_code] [nvarchar](6) NULL,
	[email_password] [nvarchar](16) NULL,
	[confirm_password] [nvarchar](16) NULL,
	[postal_code] [nvarchar](10) NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[country_code] [nvarchar](4) NULL,
	[phone_number] [nvarchar](5) NULL,
	[company_name] [nvarchar](50) NULL,
	[country] [nvarchar](4) NULL,
	[country_code_1] [nvarchar](4) NULL,
	[organization_address] [nvarchar](100) NULL,
	[organization_address_2] [nvarchar](100) NULL,
	[postal_code_1] [nvarchar](10) NULL,
	[city] [nvarchar](50) NULL,
	[preferred_language] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sla_tab]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sla_tab](
	[sla_number] [nvarchar](12) NULL,
	[customer_name] [nvarchar](24) NULL,
	[city] [nvarchar](50) NULL,
	[sla_asset] [nvarchar](10) NULL,
	[organization_name] [nvarchar](24) NULL,
	[building_name] [nvarchar](32) NULL,
	[system_name] [nvarchar](255) NULL,
	[system_status] [nvarchar](255) NULL,
	[system_privileges] [nvarchar](255) NULL,
	[last_scheduled_service] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[systems]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[systems](
	[system_serial_number] [nvarchar](20) NULL,
	[system_password] [nvarchar](8) NULL,
	[system_part_number] [nvarchar](255) NULL,
	[organization_name_select] [nvarchar](24) NULL,
	[organization_name_create] [nvarchar](24) NULL,
	[building_name_select] [nvarchar](32) NULL,
	[building_name_create] [nvarchar](32) NULL,
	[map] [nvarchar](255) NULL,
	[sub_location] [nvarchar](20) NULL,
	[description] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/12/2025 4:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [varchar](75) NOT NULL,
	[VerificationCode] [varchar](6) NOT NULL,
	[PasswordHash] [varchar](16) NOT NULL,
	[PostalCode] [varchar](10) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[CountryCode] [varchar](4) NOT NULL,
	[PhoneNumber] [varchar](10) NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[OrganizationAddress1] [varchar](100) NULL,
	[OrganizationAddress2] [varchar](100) NULL,
	[City] [varchar](50) NOT NULL,
	[PreferredLanguage] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
