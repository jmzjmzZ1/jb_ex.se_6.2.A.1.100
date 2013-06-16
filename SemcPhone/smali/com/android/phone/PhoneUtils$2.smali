.class final Lcom/android/phone/PhoneUtils$2;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inputText:Landroid/widget/EditText;

.field final synthetic val$newDialog:Landroid/app/AlertDialog;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$2;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$2;->val$inputText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/PhoneUtils$2;->val$newDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$2;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1180
    return-void
.end method
