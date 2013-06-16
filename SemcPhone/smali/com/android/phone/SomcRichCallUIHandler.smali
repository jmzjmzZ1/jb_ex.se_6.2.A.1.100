.class Lcom/android/phone/SomcRichCallUIHandler;
.super Ljava/lang/Object;
.source "SomcRichCallUIHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcRichCallUIHandler$ShareResource;
    }
.end annotation


# static fields
.field private static final sShareResource:Lcom/android/phone/SomcRichCallUIHandler$ShareResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/android/phone/SomcRichCallUIHandler$ShareResource;

    invoke-direct {v0}, Lcom/android/phone/SomcRichCallUIHandler$ShareResource;-><init>()V

    sput-object v0, Lcom/android/phone/SomcRichCallUIHandler;->sShareResource:Lcom/android/phone/SomcRichCallUIHandler$ShareResource;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method static getContentShareRes(Lcom/sonyericsson/feature/IContentShareProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "contentShareProvider"
    .parameter "context"
    .parameter "number"

    .prologue
    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-interface {p0, p2}, Lcom/sonyericsson/feature/IContentShareProvider;->getContentShareRes(Ljava/lang/String;)Lcom/sonyericsson/model/CapabilityRes;

    move-result-object v0

    .line 102
    .local v0, capabilityRes:Lcom/sonyericsson/model/CapabilityRes;
    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/model/CapabilityRes;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 107
    .local v3, res:Landroid/content/res/Resources;
    sget-object v4, Lcom/android/phone/SomcRichCallUIHandler;->sShareResource:Lcom/android/phone/SomcRichCallUIHandler$ShareResource;

    invoke-virtual {v0}, Lcom/sonyericsson/model/CapabilityRes;->getCSIcon()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/phone/SomcRichCallUIHandler;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/SomcRichCallUIHandler$ShareResource;->shareIcon:Landroid/graphics/Bitmap;

    .line 108
    sget-object v4, Lcom/android/phone/SomcRichCallUIHandler;->sShareResource:Lcom/android/phone/SomcRichCallUIHandler$ShareResource;

    invoke-virtual {v0}, Lcom/sonyericsson/model/CapabilityRes;->isCSEnabled()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/phone/SomcRichCallUIHandler$ShareResource;->isShareEnabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 110
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SomcRichCallUIHandler"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "res"
    .parameter "id"

    .prologue
    .line 76
    if-lez p1, :cond_0

    if-eqz p0, :cond_0

    .line 77
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getShareIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/phone/SomcRichCallUIHandler;->sShareResource:Lcom/android/phone/SomcRichCallUIHandler$ShareResource;

    iget-object v0, v0, Lcom/android/phone/SomcRichCallUIHandler$ShareResource;->shareIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static isContentShareEnabled()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/phone/SomcRichCallUIHandler;->sShareResource:Lcom/android/phone/SomcRichCallUIHandler$ShareResource;

    iget-boolean v0, v0, Lcom/android/phone/SomcRichCallUIHandler$ShareResource;->isShareEnabled:Z

    return v0
.end method

.method static registerForUINotification(Landroid/content/Context;Lcom/sonyericsson/feature/IContentShareProvider;Landroid/os/Handler;I)V
    .locals 2
    .parameter "context"
    .parameter "contentShareProvider"
    .parameter "handler"
    .parameter "event"

    .prologue
    .line 51
    invoke-interface {p1, p0, p2, p3}, Lcom/sonyericsson/feature/IContentShareProvider;->registerForAsyncUIUpdate(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 53
    sget-object v0, Lcom/android/phone/SomcRichCallUIHandler;->sShareResource:Lcom/android/phone/SomcRichCallUIHandler$ShareResource;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/SomcRichCallUIHandler$ShareResource;->shareIcon:Landroid/graphics/Bitmap;

    .line 54
    sget-object v0, Lcom/android/phone/SomcRichCallUIHandler;->sShareResource:Lcom/android/phone/SomcRichCallUIHandler$ShareResource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/SomcRichCallUIHandler$ShareResource;->isShareEnabled:Z

    .line 55
    return-void
.end method
