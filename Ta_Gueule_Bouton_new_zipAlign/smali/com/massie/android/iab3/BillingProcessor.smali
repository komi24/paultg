.class public Lcom/massie/android/iab3/BillingProcessor;
.super Lcom/massie/android/iab3/BillingBase;
.source "BillingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "iab3"

.field private static final MANAGED_PRODUCTS_CACHE_KEY:Ljava/lang/String; = ".products.cache.v2_6"

.field private static final PURCHASE_FLOW_REQUEST_CODE:I = 0x1f76a0

.field private static final PURCHASE_PAYLOAD_CACHE_KEY:Ljava/lang/String; = ".purchase.last.v2_6"

.field private static final RESTORE_KEY:Ljava/lang/String; = ".products.restored.v2_6"

.field private static final SETTINGS_VERSION:Ljava/lang/String; = ".v2_6"

.field private static final SUBSCRIPTIONS_CACHE_KEY:Ljava/lang/String; = ".subscriptions.cache.v2_6"


# instance fields
.field private billingService:Lcom/android/vending/billing/IInAppBillingService;

.field private cachedProducts:Lcom/massie/android/iab3/BillingCache;

.field private cachedSubscriptions:Lcom/massie/android/iab3/BillingCache;

.field private contextPackageName:Ljava/lang/String;

.field private eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private signatureBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/massie/android/iab3/BillingBase;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/massie/android/iab3/BillingProcessor$1;

    invoke-direct {v0, p0}, Lcom/massie/android/iab3/BillingProcessor$1;-><init>(Lcom/massie/android/iab3/BillingProcessor;)V

    iput-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    .line 91
    iput-object p2, p0, Lcom/massie/android/iab3/BillingProcessor;->signatureBase64:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/massie/android/iab3/BillingCache;

    const-string/jumbo v1, ".products.cache.v2_6"

    invoke-direct {v0, p1, v1}, Lcom/massie/android/iab3/BillingCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedProducts:Lcom/massie/android/iab3/BillingCache;

    .line 95
    new-instance v0, Lcom/massie/android/iab3/BillingCache;

    const-string/jumbo v1, ".subscriptions.cache.v2_6"

    invoke-direct {v0, p1, v1}, Lcom/massie/android/iab3/BillingCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedSubscriptions:Lcom/massie/android/iab3/BillingCache;

    .line 96
    invoke-direct {p0}, Lcom/massie/android/iab3/BillingProcessor;->bindPlayServices()V

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/massie/android/iab3/BillingProcessor;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/massie/android/iab3/BillingProcessor;
    .param p1, "x1"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/massie/android/iab3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/massie/android/iab3/BillingProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/massie/android/iab3/BillingProcessor;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/massie/android/iab3/BillingProcessor;->isPurchaseHistoryRestored()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/massie/android/iab3/BillingProcessor;)Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/massie/android/iab3/BillingProcessor;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    return-object v0
.end method

.method private bindPlayServices()V
    .locals 5

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "iapIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/massie/android/iab3/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "iapIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "iab3"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPurchasePayload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".purchase.last.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/massie/android/iab3/BillingProcessor;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPurchaseTransactionDetails(Ljava/lang/String;Lcom/massie/android/iab3/BillingCache;)Lcom/massie/android/iab3/TransactionDetails;
    .locals 5
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "cache"    # Lcom/massie/android/iab3/BillingCache;

    .prologue
    .line 229
    invoke-virtual {p2, p1}, Lcom/massie/android/iab3/BillingCache;->getDetails(Ljava/lang/String;)Lcom/massie/android/iab3/PurchaseInfo;

    move-result-object v0

    .line 230
    .local v0, "details":Lcom/massie/android/iab3/PurchaseInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/massie/android/iab3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    :try_start_0
    new-instance v2, Lcom/massie/android/iab3/TransactionDetails;

    invoke-direct {v2, v0}, Lcom/massie/android/iab3/TransactionDetails;-><init>(Lcom/massie/android/iab3/PurchaseInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-object v2

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "iab3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to load saved purchase details for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/massie/android/iab3/SkuDetails;
    .locals 15
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "purchaseType"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v10, p0, Lcom/massie/android/iab3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v10, :cond_3

    .line 266
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v9, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v4, "products":Landroid/os/Bundle;
    const-string/jumbo v10, "ITEM_ID_LIST"

    invoke-virtual {v4, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 270
    iget-object v10, p0, Lcom/massie/android/iab3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/massie/android/iab3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v10, v11, v12, v0, v4}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 271
    .local v8, "skuDetails":Landroid/os/Bundle;
    const-string/jumbo v10, "RESPONSE_CODE"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 272
    .local v5, "response":I
    if-nez v5, :cond_1

    .line 273
    const-string/jumbo v10, "DETAILS_LIST"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 274
    .local v6, "responseLine":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v10, "productId"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "responseProductId":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 277
    new-instance v10, Lcom/massie/android/iab3/SkuDetails;

    invoke-direct {v10, v3}, Lcom/massie/android/iab3/SkuDetails;-><init>(Lorg/json/JSONObject;)V

    .line 288
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "products":Landroid/os/Bundle;
    .end local v5    # "response":I
    .end local v6    # "responseLine":Ljava/lang/String;
    .end local v7    # "responseProductId":Ljava/lang/String;
    .end local v8    # "skuDetails":Landroid/os/Bundle;
    .end local v9    # "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v10

    .line 280
    .restart local v4    # "products":Landroid/os/Bundle;
    .restart local v5    # "response":I
    .restart local v8    # "skuDetails":Landroid/os/Bundle;
    .restart local v9    # "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v10, p0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v10, :cond_2

    .line 281
    iget-object v10, p0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    const/4 v11, 0x0

    invoke-interface {v10, v5, v11}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    .line 282
    :cond_2
    const-string/jumbo v10, "iab3"

    const-string/jumbo v11, "Failed to retrieve info for %s: error %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v4    # "products":Landroid/os/Bundle;
    .end local v5    # "response":I
    .end local v8    # "skuDetails":Landroid/os/Bundle;
    .end local v9    # "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "iab3"

    const-string/jumbo v11, "Failed to call getSkuDetails %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPurchaseHistoryRestored()Z
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".products.restored.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/massie/android/iab3/BillingProcessor;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadPurchasesByType(Ljava/lang/String;Lcom/massie/android/iab3/BillingCache;)Z
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "cacheStorage"    # Lcom/massie/android/iab3/BillingCache;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->isInitialized()Z

    move-result v8

    if-nez v8, :cond_0

    .line 145
    const/4 v8, 0x0

    .line 165
    :goto_0
    return v8

    .line 147
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/massie/android/iab3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/massie/android/iab3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, p1, v11}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "RESPONSE_CODE"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 149
    invoke-virtual {p2}, Lcom/massie/android/iab3/BillingCache;->clear()V

    .line 150
    const-string/jumbo v8, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 151
    .local v5, "purchaseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v8, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 152
    .local v7, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 153
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, "jsonData":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .local v4, "purchase":Lorg/json/JSONObject;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v2, :cond_1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 156
    .local v6, "signature":Ljava/lang/String;
    :goto_2
    const-string/jumbo v8, "productId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8, v3, v6}, Lcom/massie/android/iab3/BillingCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    .end local v6    # "signature":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 159
    .end local v2    # "i":I
    .end local v3    # "jsonData":Ljava/lang/String;
    .end local v4    # "purchase":Lorg/json/JSONObject;
    .end local v5    # "purchaseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v8, :cond_3

    .line 162
    iget-object v8, p0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    const/16 v9, 0x64

    invoke-interface {v8, v9, v1}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    .line 163
    :cond_3
    const-string/jumbo v8, "iab3"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "purchaseType"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/massie/android/iab3/BillingProcessor;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    const/4 v2, 0x0

    .line 225
    :goto_0
    return v2

    .line 186
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "purchasePayload":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/massie/android/iab3/BillingProcessor;->savePurchasePayload(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/massie/android/iab3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/massie/android/iab3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 195
    .local v15, "bundle":Landroid/os/Bundle;
    if-eqz v15, :cond_2

    .line 196
    const-string/jumbo v2, "RESPONSE_CODE"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 197
    .local v19, "response":I
    if-nez v19, :cond_4

    .line 204
    const-string/jumbo v2, "BUY_INTENT"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .line 205
    .local v18, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_3

    .line 206
    invoke-virtual/range {v18 .. v18}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    const v10, 0x1f76a0

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v14}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 221
    .end local v18    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v19    # "response":I
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 207
    .restart local v18    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v19    # "response":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v2, :cond_2

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    .end local v7    # "purchasePayload":Ljava/lang/String;
    .end local v15    # "bundle":Landroid/os/Bundle;
    .end local v18    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v19    # "response":I
    :catch_0
    move-exception v17

    .line 223
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "iab3"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 209
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v7    # "purchasePayload":Ljava/lang/String;
    .restart local v15    # "bundle":Landroid/os/Bundle;
    .restart local v19    # "response":I
    :cond_4
    const/4 v2, 0x7

    move/from16 v0, v19

    if-ne v0, v2, :cond_7

    .line 210
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/massie/android/iab3/BillingProcessor;->isPurchased(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/massie/android/iab3/BillingProcessor;->isSubscribed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/massie/android/iab3/BillingProcessor;->loadOwnedPurchasesFromGoogle()Z

    .line 212
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v2, :cond_2

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/massie/android/iab3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;)Lcom/massie/android/iab3/TransactionDetails;

    move-result-object v16

    .line 214
    .local v16, "details":Lcom/massie/android/iab3/TransactionDetails;
    if-nez v16, :cond_6

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/massie/android/iab3/BillingProcessor;->getSubscriptionTransactionDetails(Ljava/lang/String;)Lcom/massie/android/iab3/TransactionDetails;

    move-result-object v16

    .line 216
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onProductPurchased(Ljava/lang/String;Lcom/massie/android/iab3/TransactionDetails;)V

    goto :goto_1

    .line 218
    .end local v16    # "details":Lcom/massie/android/iab3/TransactionDetails;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v2, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private savePurchasePayload(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".purchase.last.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/massie/android/iab3/BillingProcessor;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    return-void
.end method

.method private verifyPurchaseSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "purchaseData"    # Ljava/lang/String;
    .param p3, "dataSignature"    # Ljava/lang/String;

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/massie/android/iab3/BillingProcessor;->signatureBase64:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x1

    .line 375
    :goto_0
    return v1

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/massie/android/iab3/BillingProcessor;->signatureBase64:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/massie/android/iab3/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public consumePurchase(Ljava/lang/String;)Z
    .locals 9
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v3

    .line 244
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedProducts:Lcom/massie/android/iab3/BillingCache;

    invoke-direct {p0, p1, v5}, Lcom/massie/android/iab3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;Lcom/massie/android/iab3/BillingCache;)Lcom/massie/android/iab3/TransactionDetails;

    move-result-object v2

    .line 245
    .local v2, "transactionDetails":Lcom/massie/android/iab3/TransactionDetails;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/massie/android/iab3/TransactionDetails;->purchaseToken:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    iget-object v5, p0, Lcom/massie/android/iab3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/massie/android/iab3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/massie/android/iab3/TransactionDetails;->purchaseToken:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 247
    .local v1, "response":I
    if-nez v1, :cond_2

    .line 248
    iget-object v5, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedProducts:Lcom/massie/android/iab3/BillingCache;

    invoke-virtual {v5, p1}, Lcom/massie/android/iab3/BillingCache;->remove(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v5, "iab3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Successfully consumed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " purchase."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 250
    goto :goto_0

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v4, :cond_3

    .line 253
    iget-object v4, p0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    .line 254
    :cond_3
    const-string/jumbo v4, "iab3"

    const-string/jumbo v5, "Failed to consume %s: error %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v1    # "response":I
    .end local v2    # "transactionDetails":Lcom/massie/android/iab3/TransactionDetails;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "iab3"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/massie/android/iab3/BillingBase;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseListingDetails(Ljava/lang/String;)Lcom/massie/android/iab3/SkuDetails;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string/jumbo v0, "inapp"

    invoke-direct {p0, p1, v0}, Lcom/massie/android/iab3/BillingProcessor;->getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/massie/android/iab3/SkuDetails;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseTransactionDetails(Ljava/lang/String;)Lcom/massie/android/iab3/TransactionDetails;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedProducts:Lcom/massie/android/iab3/BillingCache;

    invoke-direct {p0, p1, v0}, Lcom/massie/android/iab3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;Lcom/massie/android/iab3/BillingCache;)Lcom/massie/android/iab3/TransactionDetails;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionListingDetails(Ljava/lang/String;)Lcom/massie/android/iab3/SkuDetails;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string/jumbo v0, "subs"

    invoke-direct {p0, p1, v0}, Lcom/massie/android/iab3/BillingProcessor;->getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/massie/android/iab3/SkuDetails;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionTransactionDetails(Ljava/lang/String;)Lcom/massie/android/iab3/TransactionDetails;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedSubscriptions:Lcom/massie/android/iab3/BillingCache;

    invoke-direct {p0, p1, v0}, Lcom/massie/android/iab3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;Lcom/massie/android/iab3/BillingCache;)Lcom/massie/android/iab3/TransactionDetails;

    move-result-object v0

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 316
    const v11, 0x1f76a0

    move/from16 v0, p1

    if-eq v0, v11, :cond_0

    .line 317
    const/4 v11, 0x0

    .line 360
    :goto_0
    return v11

    .line 318
    :cond_0
    if-nez p3, :cond_1

    .line 319
    const-string/jumbo v11, "iab3"

    const-string/jumbo v12, "handleActivityResult: data is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v11, 0x0

    goto :goto_0

    .line 322
    :cond_1
    const-string/jumbo v11, "RESPONSE_CODE"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 323
    .local v10, "responseCode":I
    const-string/jumbo v11, "iab3"

    const-string/jumbo v12, "resultCode = %d, responseCode = %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/massie/android/iab3/BillingProcessor;->getPurchasePayload()Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, "purchasePayload":Ljava/lang/String;
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_7

    if-nez v10, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 326
    const-string/jumbo v11, "INAPP_PURCHASE_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "purchaseData":Ljava/lang/String;
    const-string/jumbo v11, "INAPP_DATA_SIGNATURE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "dataSignature":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    .local v6, "purchase":Lorg/json/JSONObject;
    const-string/jumbo v11, "productId"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "productId":Ljava/lang/String;
    const-string/jumbo v11, "developerPayload"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "developerPayload":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 333
    const-string/jumbo v3, ""

    .line 334
    :cond_2
    const-string/jumbo v11, "subs"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 335
    .local v9, "purchasedSubscription":Z
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 336
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v2}, Lcom/massie/android/iab3/BillingProcessor;->verifyPurchaseSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 337
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/massie/android/iab3/BillingProcessor;->cachedSubscriptions:Lcom/massie/android/iab3/BillingCache;

    .line 338
    .local v1, "cache":Lcom/massie/android/iab3/BillingCache;
    :goto_1
    invoke-virtual {v1, v5, v7, v2}, Lcom/massie/android/iab3/BillingCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v11, :cond_3

    .line 340
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    new-instance v12, Lcom/massie/android/iab3/TransactionDetails;

    new-instance v13, Lcom/massie/android/iab3/PurchaseInfo;

    invoke-direct {v13, v7, v2}, Lcom/massie/android/iab3/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Lcom/massie/android/iab3/TransactionDetails;-><init>(Lcom/massie/android/iab3/PurchaseInfo;)V

    invoke-interface {v11, v5, v12}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onProductPurchased(Ljava/lang/String;Lcom/massie/android/iab3/TransactionDetails;)V

    .line 360
    .end local v1    # "cache":Lcom/massie/android/iab3/BillingCache;
    .end local v2    # "dataSignature":Ljava/lang/String;
    .end local v3    # "developerPayload":Ljava/lang/String;
    .end local v5    # "productId":Ljava/lang/String;
    .end local v6    # "purchase":Lorg/json/JSONObject;
    .end local v7    # "purchaseData":Ljava/lang/String;
    .end local v9    # "purchasedSubscription":Z
    :cond_3
    :goto_2
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 337
    .restart local v2    # "dataSignature":Ljava/lang/String;
    .restart local v3    # "developerPayload":Ljava/lang/String;
    .restart local v5    # "productId":Ljava/lang/String;
    .restart local v6    # "purchase":Lorg/json/JSONObject;
    .restart local v7    # "purchaseData":Ljava/lang/String;
    .restart local v9    # "purchasedSubscription":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/massie/android/iab3/BillingProcessor;->cachedProducts:Lcom/massie/android/iab3/BillingCache;

    goto :goto_1

    .line 342
    :cond_5
    const-string/jumbo v11, "iab3"

    const-string/jumbo v12, "Public key signature doesn\'t match!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v11, :cond_3

    .line 344
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    const/16 v12, 0x66

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 351
    .end local v3    # "developerPayload":Ljava/lang/String;
    .end local v5    # "productId":Ljava/lang/String;
    .end local v6    # "purchase":Lorg/json/JSONObject;
    .end local v9    # "purchasedSubscription":Z
    :catch_0
    move-exception v4

    .line 352
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "iab3"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v11, :cond_3

    .line 354
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    const/16 v12, 0x6e

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    goto :goto_2

    .line 347
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "developerPayload":Ljava/lang/String;
    .restart local v5    # "productId":Ljava/lang/String;
    .restart local v6    # "purchase":Lorg/json/JSONObject;
    .restart local v9    # "purchasedSubscription":Z
    :cond_6
    :try_start_1
    const-string/jumbo v11, "iab3"

    const-string/jumbo v12, "Payload mismatch: %s != %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v11, :cond_3

    .line 349
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    const/16 v12, 0x66

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 357
    .end local v2    # "dataSignature":Ljava/lang/String;
    .end local v3    # "developerPayload":Ljava/lang/String;
    .end local v5    # "productId":Ljava/lang/String;
    .end local v6    # "purchase":Lorg/json/JSONObject;
    .end local v7    # "purchaseData":Ljava/lang/String;
    .end local v9    # "purchasedSubscription":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    if-eqz v11, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/massie/android/iab3/BillingProcessor;->eventHandler:Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;

    const/4 v12, 0x0

    invoke-interface {v11, v10, v12}, Lcom/massie/android/iab3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    goto :goto_2
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPurchased(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedProducts:Lcom/massie/android/iab3/BillingCache;

    invoke-virtual {v0, p1}, Lcom/massie/android/iab3/BillingCache;->includesProduct(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedSubscriptions:Lcom/massie/android/iab3/BillingCache;

    invoke-virtual {v0, p1}, Lcom/massie/android/iab3/BillingCache;->includesProduct(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Lcom/massie/android/iab3/TransactionDetails;)Z
    .locals 3
    .param p1, "transactionDetails"    # Lcom/massie/android/iab3/TransactionDetails;

    .prologue
    .line 380
    iget-object v0, p1, Lcom/massie/android/iab3/TransactionDetails;->productId:Ljava/lang/String;

    iget-object v1, p1, Lcom/massie/android/iab3/TransactionDetails;->purchaseInfo:Lcom/massie/android/iab3/PurchaseInfo;

    iget-object v1, v1, Lcom/massie/android/iab3/PurchaseInfo;->responseData:Ljava/lang/String;

    iget-object v2, p1, Lcom/massie/android/iab3/TransactionDetails;->purchaseInfo:Lcom/massie/android/iab3/PurchaseInfo;

    iget-object v2, v2, Lcom/massie/android/iab3/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/massie/android/iab3/BillingProcessor;->verifyPurchaseSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listOwnedProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedProducts:Lcom/massie/android/iab3/BillingCache;

    invoke-virtual {v0}, Lcom/massie/android/iab3/BillingCache;->getContents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOwnedSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedSubscriptions:Lcom/massie/android/iab3/BillingCache;

    invoke-virtual {v0}, Lcom/massie/android/iab3/BillingCache;->getContents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadOwnedPurchasesFromGoogle()Z
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "inapp"

    iget-object v1, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedProducts:Lcom/massie/android/iab3/BillingCache;

    invoke-direct {p0, v0, v1}, Lcom/massie/android/iab3/BillingProcessor;->loadPurchasesByType(Ljava/lang/String;Lcom/massie/android/iab3/BillingCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "subs"

    iget-object v1, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedSubscriptions:Lcom/massie/android/iab3/BillingCache;

    invoke-direct {p0, v0, v1}, Lcom/massie/android/iab3/BillingProcessor;->loadPurchasesByType(Ljava/lang/String;Lcom/massie/android/iab3/BillingCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v0, "inapp"

    invoke-direct {p0, p1, p2, v0}, Lcom/massie/android/iab3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/massie/android/iab3/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/massie/android/iab3/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/massie/android/iab3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/massie/android/iab3/BillingProcessor;->cachedProducts:Lcom/massie/android/iab3/BillingCache;

    invoke-virtual {v1}, Lcom/massie/android/iab3/BillingCache;->release()V

    .line 120
    invoke-super {p0}, Lcom/massie/android/iab3/BillingBase;->release()V

    .line 121
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "iab3"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPurchaseHistoryRestored()V
    .locals 2

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/massie/android/iab3/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".products.restored.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/massie/android/iab3/BillingProcessor;->saveBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 390
    return-void
.end method

.method public subscribe(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string/jumbo v0, "subs"

    invoke-direct {p0, p1, p2, v0}, Lcom/massie/android/iab3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
