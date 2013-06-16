.class Lcom/android/phone/SomcCallEndedInteractionActivity$5;
.super Ljava/lang/Object;
.source "SomcCallEndedInteractionActivity.java"

# interfaces
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallEndedInteractionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcCallEndedInteractionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$5;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"
    .parameter "resultIcon"

    .prologue
    .line 247
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SomcCallEndedInteractionActivity"

    const-string v2, "onImageLoadComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$5;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mContactImage:Lcom/android/phone/SomcContactPicView;
    invoke-static {v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$400(Lcom/android/phone/SomcCallEndedInteractionActivity;)Lcom/android/phone/SomcContactPicView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 251
    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$5;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mContactImage:Lcom/android/phone/SomcContactPicView;
    invoke-static {v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$400(Lcom/android/phone/SomcCallEndedInteractionActivity;)Lcom/android/phone/SomcContactPicView;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    move-object v0, p4

    .line 253
    check-cast v0, Landroid/net/Uri;

    .line 254
    .local v0, loadingPersonUri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$5;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mLoadingPersonUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$500(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_3

    .line 256
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    .line 257
    const-string v1, "SomcCallEndedInteractionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the image is null or not the one we required, loadingPersonUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$5;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mContactImage:Lcom/android/phone/SomcContactPicView;
    invoke-static {v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$400(Lcom/android/phone/SomcCallEndedInteractionActivity;)Lcom/android/phone/SomcContactPicView;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$5;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mContactImage:Lcom/android/phone/SomcContactPicView;
    invoke-static {v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$400(Lcom/android/phone/SomcCallEndedInteractionActivity;)Lcom/android/phone/SomcContactPicView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/phone/SomcContactPicView;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
