.class public Lcom/google/appinventor/components/runtime/ActivityStarter;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ActivityStarter.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A component that can launch an activity using the <code>StartActivity</code> method.</p><p>Activities that can be launched include:<ul> <li> Starting another App Inventor for Android app.  To do so, first      find out the <em>class</em> of the other application by      downloading the source code and using a file explorer or unzip      utility to find a file named      \"youngandroidproject/project.properties\".  The first line of      the file will start with \"main=\" and be followed by the class      name; for example,      <code>main=com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>.       (The first components indicate that it was created by      Ben.Bitdiddle@gmail.com.)  To make your      <code>ActivityStarter</code> launch this application, set the      following properties: <ul>      <li> <code>ActivityPackage</code> to the class name, dropping the           last component (for example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr</code>)</li>      <li> <code>ActivityClass</code> to the entire class name (for           example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>)</li>      </ul></li><li> Starting the camera application by setting the following      properties:<ul>      <li> <code>Action: android.intent.action.MAIN</code> </li>      <li> <code>ActivityPackage: com.android.camera</code> </li>      <li> <code>ActivityClass: com.android.camera.Camera</code></li>      </ul></li><li> Performing web search.  Assuming the term you want to search      for is \"vampire\" (feel free to substitute your own choice),      set the properties to:<blockquote><code>      Action: android.intent.action.WEB_SEARCH<br/>      ExtraKey: query<br/>      ExtraValue: vampire<br/>      ActivityPackage: com.google.android.providers.enhancedgooglesearch<br/>     ActivityClass: com.google.android.providers.enhancedgooglesearch.Launcher<br/>      </code></blockquote></li> <li> Using multiple ExtraKey and ExtraValue.  Assuming to insert into contacts<blockquote><code>      Action: android.intent.action.INSERT<br/>      DataUri: content://contacts/people/<br/>      ExtraKeysAndValues (use a List):<br/>      name=value<br/>      phone=value<br/>      email=value<br/>      postal=value<br/>      </code></blockquote></li> <li> Opening a browser to a specified web page.  Assuming the page you      want to go to is \"www.facebook.com\" (feel free to substitute      your own choice), set the properties to: <blockquote><code>      Action: android.intent.action.VIEW <br/>      DataUri: http://www.facebook.com </code> </blockquote> </li> </ul></p>"
    designerHelpDescription = "<p>A component that can launch an activity using the <code>StartActivity</code> method.</p><p>Activities that can be launched include:<ul> <li> starting other App Inventor for Android apps </li> <li> starting the camera application </li> <li> performing web search </li> <li> opening a browser to a specified web page</li> <li> opening the map application to a specified location</li></ul> You can also launch activities that return text data.  See the documentation on using the Activity Starter for examples.</p>"
    iconName = "images/activityStarter.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private activityClass:Ljava/lang/String;

.field private activityPackage:Ljava/lang/String;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private csvKeysAndValues:Lcom/google/appinventor/components/runtime/util/YailList;

.field private dataType:Ljava/lang/String;

.field private dataUri:Ljava/lang/String;

.field private extraKey:Ljava/lang/String;

.field private extraValue:Ljava/lang/String;

.field private requestCode:I

.field private result:Ljava/lang/String;

.field private resultIntent:Landroid/content/Intent;

.field private resultName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 131
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 471
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->csvKeysAndValues:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 134
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->Action(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ActivityPackage(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ActivityClass(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->DataUri(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->DataType(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ExtraKey(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ExtraValue(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ResultName(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private buildActivityIntent()Landroid/content/Intent;
    .locals 17

    .prologue
    .line 420
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 421
    .local v10, "uri":Landroid/net/Uri;
    :goto_0
    if-eqz v10, :cond_4

    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    invoke-direct {v6, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 423
    .local v6, "intent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 424
    if-eqz v10, :cond_5

    .line 425
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    .line 432
    :cond_1
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    invoke-direct {v3, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .local v3, "component":Landroid/content/ComponentName;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 435
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->csvKeysAndValues:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v11}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 436
    .local v8, "keyValues":[Ljava/lang/String;
    array-length v11, v8

    if-lez v11, :cond_7

    .line 438
    move-object v2, v8

    .local v2, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v9, v2

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v9, :cond_6

    aget-object v1, v2, v5

    .line 439
    .local v1, "aKeyAndValue":Ljava/lang/String;
    const-string/jumbo v11, "="

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 440
    .local v7, "keyValue":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 420
    .end local v1    # "aKeyAndValue":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "keyValue":[Ljava/lang/String;
    .end local v8    # "keyValues":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 421
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_4
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 427
    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 442
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v8    # "keyValues":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 443
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v12, "StartActivity"

    const/16 v13, 0x25a

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->csvKeysAndValues:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12, v13, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 467
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_4
    return-object v6

    .line 463
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_6

    .line 464
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4
.end method


# virtual methods
.method public Action()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    return-object v0
.end method

.method public Action(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public ActivityClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    return-object v0
.end method

.method public ActivityClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityClass"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public ActivityError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The ActivityError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .prologue
    .line 506
    return-void
.end method

.method public ActivityPackage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    return-object v0
.end method

.method public ActivityPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityPackage"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public AfterActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after this ActivityStarter returns."
    .end annotation

    .prologue
    .line 341
    const-string/jumbo v0, "AfterActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method public DataType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public DataType(Ljava/lang/String;)V
    .locals 1
    .param p1, "dataType"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public DataUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    return-object v0
.end method

.method public DataUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "dataUri"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public ExtraKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "extraKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public ExtraKeysAndValues()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->csvKeysAndValues:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public ExtraKeysAndValues(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p1, "csvKeysAndValues"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows you to setup multiple Extra Key and Extra Values. You can pass in a list of key=value"
    .end annotation

    .prologue
    .line 475
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->csvKeysAndValues:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 476
    return-void
.end method

.method public ExtraValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "extraValue"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public ResolveActivity()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the name of the activity that corresponds to this ActivityStarer, or an empty string if no corresponding activity can be found."
    .end annotation

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->buildActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 384
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 385
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 388
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    return-object v0
.end method

.method public ResultName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    return-object v0
.end method

.method public ResultName(Ljava/lang/String;)V
    .locals 1
    .param p1, "resultName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public ResultType()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 350
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "resultType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 356
    .end local v0    # "resultType":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public ResultUri()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "resultUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 371
    .end local v0    # "resultUri":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public StartActivity()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the activity corresponding to this ActivityStarter."
    .end annotation

    .prologue
    .line 396
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    .line 397
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    .line 399
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->buildActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 401
    .local v1, "intent":Landroid/content/Intent;
    iget v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    if-nez v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    .line 410
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 411
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getOpenAnimType()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "openAnim":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v2    # "openAnim":Ljava/lang/String;
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v4, "StartActivity"

    const/16 v5, 0x259

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 513
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 486
    iget v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    if-ne p1, v0, :cond_0

    .line 487
    const-string/jumbo v0, "ActivityStarter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultReturned - resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 489
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    .line 490
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->AfterActivity(Ljava/lang/String;)V

    .line 500
    :cond_0
    return-void

    .line 494
    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    goto :goto_0
.end method
