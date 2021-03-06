# Arches Example Package

This is a basic package that can be installed for a quick start with Arches.

An explanation of all graphs (both Resource Models and Branches) included in this package follows.

### Load the package

```
python manage.py packages -o load_package -s https://github.com/reubenosborne1/kint-arches-pkg/archive/master.zip -db 
```

## Resource Models

+ Activity Resource Model

    This resource model describes activities relating to heritage resources and heritage resource groups.
    
+ Actor Resource Model

    This resource model describes actor resources such as individual people and groups of people.

+ Heritage Resource Group Resource Model

    This resource model describes heritage resource groups which are groupings of historically significant resources.  Those historically significant resource may more may not themselves be instances of Heritage Resource.

+ Heritage Resource Model

    This resource model describes heritage resources, which includes monuments, buildings, structures, etc.

+ Historical Event Resource Model

    Resource Model for the Historical Event Resource (E5), which is used to describe significant historical events.

+ Information Resource Model

    This resource model defines information resources, such as images, reports, and publications. 

## Branches

+ Activity Phase

    Describes the time span and type of an Activity Resource.
    
+ Actor Phase

    Phase Type Assignment for the Actor resource model.
    
    Connects to Actor E39 via P41i

+ Appellation

    Describes an appellation assigned to an Actor Resource.
    
    Relates to resource model via P131
    
+ Beginning of Existence

    Describes the type and time span of the beginning of a resource's existence.
    
    Relates to the Actor resource model E39 via P92i.
    
    Relates to Historic Event E5 and Activity E7 via p116i.
    
+ Component

    Physical thing on a heritage resource. Connect to Heritage Resource E18 via P46
+ Condition Assessment

    Describes the conditions, threats, and disturbances affecting a Heritage Resource or Heritage Resource Group. Additional information may include a management recommendation, a condition image, the data the condition was assessed and a description of the condition.
    
+ Description

    Generic branch for capturing free-form written descriptive information.
    
    Intended to be evolution from v3 description branch from HIP 3. Created semantic description node with description string and description type hanging off of it. Description (semantic node) becomes a grouping node (type and string).  
        
    This branch meets technical business rules for CRM compliance but CRM experts have said that this is an inappropriate implementation of E62.
    
    Connects to all resources with P140i
    
+ End of Existence

    Describes the type and time span of the end of a resource's existence.
    
    Relates to the Actor E39 Resource Model via P93i
    
+ Evaluation

    This branch evaluates instances of Heritage Resource E18 and Heritage Resource Group E27, and is based on the City of Los Angeles' SurveyLA survey methodology for evaluation of  significance and eligibility for designation as a heritage resource or heritage resource group. Evaluation consists of defining a historic context (Evaluation Criteria) which triggers specific eligibility requirements (Eligibility Requirements) and results in the selection of one or more status codes (Status) and the writing of a reasons statement (Reasons). The branch also contains nodes to record the date of Evaluation, the dates defining the Period of Significance for evaluation.
   
    Relates to E18 and E27 resource models via P140i.
    
+ Event Phase Type

    Describes a Historical Event Type within a given timespan/phase. 
    
    Connects to the Historical Event resource model via P10
    
+ Existence

    Start/End dates for resources.  Assumed to be typed and within calendar time. 
    
    Connects to Activity (E7) and Historical Event (E5) resource models via P114
    
    Connects to Heritage Resource (E18) and Heritage Resource Group (E27) resource models via P12i
    
    Connects to Actor (E39) resource model via P11i
    
+ External Identifier

    Used to hold identifiers necessary to link a given resource to records in an external (perhaps legacy) system.
    
+ Heritage Resource Group Phase Type

    Phase Type Assignments for Heritage Resource Group E27
    
    Connects via P92i
    
+ Heritage Resource Phase Type

    Phase Type Assignments for Heritage Resource E18.
    
    Connects via P92i
    
+ Information Carrier

    An object or substance used to record and accumulate data
    
+ Information Resource Copyright

    Used to define legal privileges associated with an Information Resource.
    
+ Information Resource Creation Event

    Describes the creators, contributors, type, and date of a creation and/or update event of an information resource.
    
+ Keyword

    An informative word used for resource information retrieval that indicates the content of a resource.
    
    Relates to resources via P2.
    
+ Language

    This branch describes the language of an Information Resource.
    
+ Measurement

    The Measurement branch measures instances of a Heritage Resource E18 or a Heritage Resource Group E27
    
    Relates to those resource models via P39i
    
+ Modification Event

    Describes the modification of a Heritage Resource.
    
    Connects to Heritage Resource (E18) via P12i
    
+ Name

    The name of a resource.
    
    Applies to Heritage Resource, Heritage Resource Group, Activity, and Historical Event.  Actors receive their "names" from the Appellation branch.
    
+ Place 1

    Describes the physical location of a heritage resource or heritage resource group.  Includes extra nodes for cadastral information.
    
    Relates to Heritage Resource E18 with P53
    
    Relates to Heritage Resource Group E27 with P89
        
+ Place 2

    For Actor resources: Describes the former and current residences of an Actor resource. Relates to Actor E39 with P74 
    
    For Activity and Historic Event: Describes the location of where an activity or historic event took place. Relates to Activity E7 with P7. Relates to Historical Event E5 with P7
    
+ Place 3

    Describes the location of an information resource. Relates to Information Resource E73 with P67
+ Publication Event

    This branch describes the publication of an Information Resource.
    
    Connects to Information Resource (E73) with -P128
    
+ Resource Type Classification

    Describes the type of resource. 
    
    Applies to: Heritage Group, Heritage
    
+ Resource Update Event

    This is intended as a sub-branch to Resource Creation Event within the Information Resource Resource Model.  Stores the date when an update to the information resource occurred.
    
+ Right

    Captures information about special status, protection, or privileges afforded under law.
    
    Applies to: Heritage Resource, Heritage Resource Model
    
+ Temporal Coverage

    Defines time span for which the Information Resource is relevant.
    
    Applies to: Information Resource
    
+ Title

    Describes the title of an Information Resource.


# kint-arches-pkg
