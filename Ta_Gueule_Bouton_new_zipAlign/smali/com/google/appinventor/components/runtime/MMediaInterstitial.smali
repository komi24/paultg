.class public Lcom/google/appinventor/components/runtime/MMediaInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "MMediaInterstitial.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "An interstitial ad is a full-page ad. MMediaInterstitial component allows you to monetize your app. You must have a valid MMedia account and AdUnitId that can be obtained from http://www.MillennialMedia.com . If your id is invalid, the MMediaInterstitial will not display on the emulator or the device. "
    iconName = "images/mmediainterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "MMSDK.jar,google-play-services.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECORD_AUDIO,android.permission.INTERNET,permission.ACCESS_NETWORK_STATE,android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MMediaInterstitial"


# instance fields
.field public adFailedToLoadMessage:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field private interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

.field mmRequest:Lcom/millennialmedia/android/MMRequest;

.field public targetAge:I

.field private targetGender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetAge:I

    .line 30
    const-string/jumbo v0, "ALL"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetGender:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/millennialmedia/android/MMInterstitial;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

    .line 39
    new-instance v0, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

    new-instance v1, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;-><init>(Lcom/google/appinventor/components/runtime/MMediaInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 43
    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked when user taps on the ad"
    .end annotation

    .prologue
    .line 130
    const-string/jumbo v0, "AdClicked"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user is about to return to the application after clicking on an ad"
    .end annotation

    .prologue
    .line 53
    const-string/jumbo v0, "AdClosed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public AdExpanded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked when user taps on the ad"
    .end annotation

    .prologue
    .line 124
    const-string/jumbo v0, "AdExpanded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed. message will display the reason for why the ad failed"
    .end annotation

    .prologue
    .line 48
    const-string/jumbo v0, "AdFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is received"
    .end annotation

    .prologue
    .line 59
    const-string/jumbo v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public AppID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public AppID(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AppID"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->appId:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->LoadAd()V

    .line 76
    return-void
.end method

.method public LoadAd()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    .line 103
    .local v0, "request":Lcom/millennialmedia/android/MMRequest;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetGender:Ljava/lang/String;

    const-string/jumbo v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetGender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setGender(Ljava/lang/String;)V

    .line 109
    :cond_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetAge:I

    if-lez v1, :cond_1

    .line 110
    const-string/jumbo v1, "MMediaInterstitial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Targeting calendar age of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetAge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetAge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setAge(Ljava/lang/String;)V

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 117
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

    new-instance v2, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;-><init>(Lcom/google/appinventor/components/runtime/MMediaInterstitial;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 118
    return-void
.end method

.method public ShowInterstitialAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will show the Interstitial Ad"
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->interstitialAd:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Interstitial AppID of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " was not ready to be shown. Make sure you have set AppId and is valid ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->adFailedToLoadMessage:Ljava/lang/String;

    .line 170
    const-string/jumbo v0, "MMediaInterstitial"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->adFailedToLoadMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->adFailedToLoadMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->AdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TargetAge()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetAge:I

    return v0
.end method

.method public TargetAge(I)V
    .locals 0
    .param p1, "targetAge"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Leave 0 for targeting ALL ages"
    .end annotation

    .prologue
    .line 87
    iput p1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetAge:I

    .line 88
    return-void
.end method

.method public TargetGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ALL"
        editorType = "gender_options"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->targetGender:Ljava/lang/String;

    .line 95
    return-void
.end method
