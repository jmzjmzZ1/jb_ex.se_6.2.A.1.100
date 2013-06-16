.class Lcom/android/phone/ContactsAsyncHelper$1;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactsAsyncHelper;


# direct methods
.method constructor <init>(Lcom/android/phone/ContactsAsyncHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/ContactsAsyncHelper$1;->this$0:Lcom/android/phone/ContactsAsyncHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 84
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;

    .line 85
    .local v6, args:Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 88
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "ContactsAsyncHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " completed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    iget-object v0, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v3, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    iget-object v4, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->resultIcon:Landroid/graphics/Bitmap;

    invoke-interface/range {v0 .. v5}, Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
