.class Lcom/android/phone/LargeCallView$2;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/phone/LargeCallView$2;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/phone/LargeCallView$2;->this$0:Lcom/android/phone/LargeCallView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/LargeCallView;->fireAction(ILjava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/android/phone/LargeCallView$2;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Lcom/android/phone/LargeCallView;->refreshSoundStates()V

    .line 291
    return-void
.end method
