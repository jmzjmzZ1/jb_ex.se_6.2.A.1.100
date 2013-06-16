.class Lcom/android/phone/SomcCallEndedInteractionActivity$4;
.super Ljava/lang/Object;
.source "SomcCallEndedInteractionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcCallEndedInteractionActivity;->initComponents()V
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
    .line 179
    iput-object p1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$4;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$4;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$300(Lcom/android/phone/SomcCallEndedInteractionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$4;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method
