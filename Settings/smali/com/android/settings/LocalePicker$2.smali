.class Lcom/android/settings/LocalePicker$2;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocalePicker;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/LocalePicker$2;->this$0:Lcom/android/settings/LocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/LocalePicker$2;->this$0:Lcom/android/settings/LocalePicker;

    #calls: Lcom/android/settings/LocalePicker;->selectLocale()V
    invoke-static {v0}, Lcom/android/settings/LocalePicker;->access$000(Lcom/android/settings/LocalePicker;)V

    .line 114
    return-void
.end method
