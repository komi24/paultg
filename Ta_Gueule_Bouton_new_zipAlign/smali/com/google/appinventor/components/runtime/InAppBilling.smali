.class public Lcom/google/appinventor/components/runtime/InAppBilling;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "InAppBilling.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>InAppBilling component lets you sell digital content from inside your applications. It can be used to sell a wide range of content, including downloadable content such as media files or photos, virtual content such as game levels or potions, premium services and features, and more. You can use In-app Billing to sell products as: <ul> <li>Standard in-app products (one-time billing), or</li> <li>Subscriptions (recurring, automated billing)</li></ul><p> For more information, please see here: http://tinyurl.com/m3acuk3 and here: http://tinyurl.com/cl7nyuv"
    iconName = "images/billing.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "massie-iab3.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "com.android.vending.BILLING"
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private licenseKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 50
    const-string/jumbo v0, "LICENSE_KEY"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "InAppBilling"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->LOG_TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 65
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/InAppBilling;->initBillingProcessor()V

    .line 68
    return-void
.end method

.method private buildSkuDetail(Lcom/massie/android/iab3/SkuDetails;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p1, "skuDetails"    # Lcom/massie/android/iab3/SkuDetails;

    .prologue
    .line 223
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 224
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 237
    :goto_0
    return-object v1

    .line 226
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "myList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "productId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/massie/android/iab3/SkuDetails;->productId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/massie/android/iab3/SkuDetails;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/massie/android/iab3/SkuDetails;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSubscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/massie/android/iab3/SkuDetails;->isSubscription:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "priceText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/massie/android/iab3/SkuDetails;->priceText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/massie/android/iab3/SkuDetails;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 237
    .local v1, "yailList":Lcom/google/appinventor/components/runtime/util/YailList;
    goto/16 :goto_0
.end method

.method private buildTransactionDetail(Lcom/massie/android/iab3/TransactionDetails;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6
    .param p1, "tranDetails"    # Lcom/massie/android/iab3/TransactionDetails;

    .prologue
    .line 240
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 241
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 263
    :goto_0
    return-object v3

    .line 243
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "myList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "productId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/massie/android/iab3/TransactionDetails;->productId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "orderId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/massie/android/iab3/TransactionDetails;->orderId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "purchaseDateTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/massie/android/iab3/TransactionDetails;->purchaseTime:Ljava/util/Date;

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/InAppBilling;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p1, Lcom/massie/android/iab3/TransactionDetails;->purchaseInfo:Lcom/massie/android/iab3/PurchaseInfo;

    .line 250
    .local v1, "purchaseInfo":Lcom/massie/android/iab3/PurchaseInfo;
    if-eqz v1, :cond_2

    .line 251
    invoke-virtual {v1}, Lcom/massie/android/iab3/PurchaseInfo;->parseResponseData()Lcom/massie/android/iab3/PurchaseInfo$ResponseData;

    move-result-object v2

    .line 252
    .local v2, "responseData":Lcom/massie/android/iab3/PurchaseInfo$ResponseData;
    if-eqz v2, :cond_2

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "purchaseStateName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/massie/android/iab3/PurchaseInfo$ResponseData;->purchaseState:Lcom/massie/android/iab3/PurchaseInfo$PurchaseState;

    invoke-virtual {v5}, Lcom/massie/android/iab3/PurchaseInfo$PurchaseState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "purchaseState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/massie/android/iab3/PurchaseInfo$ResponseData;->purchaseState:Lcom/massie/android/iab3/PurchaseInfo$PurchaseState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v2    # "responseData":Lcom/massie/android/iab3/PurchaseInfo$ResponseData;
    :cond_2
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 263
    .local v3, "yailList":Lcom/google/appinventor/components/runtime/util/YailList;
    goto/16 :goto_0
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 341
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initBillingProcessor()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/massie/android/iab3/BillingProcessor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/massie/android/iab3/BillingProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/Form;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    .line 77
    return-void
.end method


# virtual methods
.method public BillingError(ILjava/lang/String;)Z
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a billing error occurs"
    .end annotation

    .prologue
    .line 291
    const-string/jumbo v0, "BillingError"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public BillingInitialized(Z)Z
    .locals 4
    .param p1, "isReadyToPurchase"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when Google Play In-App Billing is initialized"
    .end annotation

    .prologue
    .line 281
    const-string/jumbo v0, "BillingInitialized"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ConsumePurchase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Consume the last purchase of the given product to allow re-purchase of this item."
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/InAppBilling;->initBillingProcessor()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v0, p1}, Lcom/massie/android/iab3/BillingProcessor;->consumePurchase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public GetPurchaseListingDetails(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Product details for the Product ID"
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/InAppBilling;->initBillingProcessor()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v0, p1}, Lcom/massie/android/iab3/BillingProcessor;->getPurchaseListingDetails(Ljava/lang/String;)Lcom/massie/android/iab3/SkuDetails;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->buildSkuDetail(Lcom/massie/android/iab3/SkuDetails;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetPurchaseTransactionDetails(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get transaction detail for the product ID. Will return empty list if transaction for purchase doesn\'t exist"
    .end annotation

    .prologue
    .line 180
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/InAppBilling;->initBillingProcessor()V

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v1, p1}, Lcom/massie/android/iab3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;)Lcom/massie/android/iab3/TransactionDetails;

    move-result-object v0

    .line 186
    .local v0, "transactionDetails":Lcom/massie/android/iab3/TransactionDetails;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->buildTransactionDetail(Lcom/massie/android/iab3/TransactionDetails;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public GetSubscriptioListingDetails(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get subscription detail for the Subscription (product) ID"
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/InAppBilling;->initBillingProcessor()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v0, p1}, Lcom/massie/android/iab3/BillingProcessor;->getSubscriptionListingDetails(Ljava/lang/String;)Lcom/massie/android/iab3/SkuDetails;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->buildSkuDetail(Lcom/massie/android/iab3/SkuDetails;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetSubscriptionTransactionDetails(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get transaction detail for the Subscription (product) ID. Will return empty list if transaction for subscription doesn\'t exist"
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/InAppBilling;->initBillingProcessor()V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v1, p1}, Lcom/massie/android/iab3/BillingProcessor;->getSubscriptionTransactionDetails(Ljava/lang/String;)Lcom/massie/android/iab3/TransactionDetails;

    move-result-object v0

    .line 198
    .local v0, "transactionDetails":Lcom/massie/android/iab3/TransactionDetails;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->buildTransactionDetail(Lcom/massie/android/iab3/TransactionDetails;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public IsPurchased(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use to determine if product has been purchased this product"
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->LicenseKey(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v0, p1}, Lcom/massie/android/iab3/BillingProcessor;->isPurchased(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public IsSubscribed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use to determine if user has subscribed to this product"
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->LicenseKey(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v0, p1}, Lcom/massie/android/iab3/BillingProcessor;->isSubscribed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public LicenseKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    return-object v0
.end method

.method public LicenseKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "licenseKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "LICENSE_KEY"
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/InAppBilling;->initBillingProcessor()V

    .line 85
    return-void
.end method

.method public ListOwnedProducts()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves list of owned products"
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/InAppBilling;->LicenseKey(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v1}, Lcom/massie/android/iab3/BillingProcessor;->listOwnedProducts()Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 131
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    goto :goto_0
.end method

.method public ListOwnedSubscriptions()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves list of owned subscriptions"
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/InAppBilling;->LicenseKey(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 148
    :goto_0
    return-object v1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v1}, Lcom/massie/android/iab3/BillingProcessor;->listOwnedSubscriptions()Ljava/util/List;

    move-result-object v0

    .line 145
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    goto :goto_0
.end method

.method public LoadOwnedPurchasesFromGoogle()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Since Google\'s doesn\'t provide any callbacks to handle canceled and/or expired subscriptions you have to handle it on your own by running this block periodically"
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/InAppBilling;->initBillingProcessor()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v0}, Lcom/massie/android/iab3/BillingProcessor;->loadOwnedPurchasesFromGoogle()Z

    move-result v0

    return v0
.end method

.method public ProductPurchased(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "prodId"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "isAutoRenewing"    # Z
    .param p4, "purchaseDateTime"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a product was purchased"
    .end annotation

    .prologue
    .line 286
    const-string/jumbo v0, "ProductPurchased"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public PurchaseHistoryRestored(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .param p1, "purchaseHistory"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when purchase history was restored and the list of all owned PRODUCT ID\'s was loaded from Google Play"
    .end annotation

    .prologue
    .line 297
    const-string/jumbo v0, "PurchaseHistoryRestored"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public StartPurchase(Ljava/lang/String;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts the purchase for the Product ID from Google Play Console"
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->LicenseKey(Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/massie/android/iab3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 100
    return-void
.end method

.method public StartSubscription(Ljava/lang/String;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts the subscription for the Subscription (Product) ID from Google Play Console"
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->licenseKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->LicenseKey(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/massie/android/iab3/BillingProcessor;->subscribe(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 158
    return-void
.end method

.method public onBillingError(ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBillingError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/massie/android/iab3/Constants;->BILLING_ERROR:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->BillingError(ILjava/lang/String;)Z

    .line 351
    return-void
.end method

.method public onBillingInitialized()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBillingInitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/InAppBilling;->BillingInitialized(Z)Z

    .line 277
    return-void
.end method

.method public onProductPurchased(Ljava/lang/String;Lcom/massie/android/iab3/TransactionDetails;)V
    .locals 9
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "details"    # Lcom/massie/android/iab3/TransactionDetails;

    .prologue
    .line 305
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onProductPurchased transaction details are: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p2, Lcom/massie/android/iab3/TransactionDetails;->productId:Ljava/lang/String;

    .line 307
    .local v2, "prodId":Ljava/lang/String;
    iget-object v1, p2, Lcom/massie/android/iab3/TransactionDetails;->orderId:Ljava/lang/String;

    .line 309
    .local v1, "orderId":Ljava/lang/String;
    iget-object v3, p2, Lcom/massie/android/iab3/TransactionDetails;->purchaseInfo:Lcom/massie/android/iab3/PurchaseInfo;

    .line 311
    .local v3, "purchaseInfo":Lcom/massie/android/iab3/PurchaseInfo;
    invoke-virtual {v3}, Lcom/massie/android/iab3/PurchaseInfo;->parseResponseData()Lcom/massie/android/iab3/PurchaseInfo$ResponseData;

    move-result-object v5

    .line 312
    .local v5, "responseData":Lcom/massie/android/iab3/PurchaseInfo$ResponseData;
    iget-boolean v0, v5, Lcom/massie/android/iab3/PurchaseInfo$ResponseData;->autoRenewing:Z

    .line 313
    .local v0, "isAutoRenewing":Z
    iget-object v4, p2, Lcom/massie/android/iab3/TransactionDetails;->purchaseTime:Ljava/util/Date;

    .line 315
    .local v4, "purchaseTime":Ljava/util/Date;
    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/InAppBilling;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v1, v0, v6}, Lcom/google/appinventor/components/runtime/InAppBilling;->ProductPurchased(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 316
    return-void
.end method

.method public onPurchaseHistoryRestored()V
    .locals 5

    .prologue
    .line 320
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onPurchaseHistoryRestored"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    if-nez v3, :cond_0

    .line 338
    :goto_0
    return-void

    .line 329
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "ownedSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v3}, Lcom/massie/android/iab3/BillingProcessor;->listOwnedProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "sku":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    .end local v2    # "sku":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/InAppBilling;->billingProcessor:Lcom/massie/android/iab3/BillingProcessor;

    invoke-virtual {v3}, Lcom/massie/android/iab3/BillingProcessor;->listOwnedSubscriptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .restart local v2    # "sku":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 337
    .end local v2    # "sku":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/InAppBilling;->PurchaseHistoryRestored(Lcom/google/appinventor/components/runtime/util/YailList;)V

    goto :goto_0
.end method
