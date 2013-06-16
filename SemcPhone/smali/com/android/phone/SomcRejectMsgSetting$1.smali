.class Lcom/android/phone/SomcRejectMsgSetting$1;
.super Ljava/lang/Object;
.source "SomcRejectMsgSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcRejectMsgSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcRejectMsgSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcRejectMsgSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgSetting$1;->this$0:Lcom/android/phone/SomcRejectMsgSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 57
    instance-of v4, p1, Lcom/android/phone/MultiLineTitleEditTextPreference;

    if-nez v4, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/android/phone/MultiLineTitleEditTextPreference;

    .line 60
    .local v0, currentPref:Lcom/android/phone/MultiLineTitleEditTextPreference;
    invoke-virtual {v0}, Lcom/android/phone/MultiLineTitleEditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, prevPrefValue:Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_2

    .line 62
    const-string v4, "SomcRejectMsgSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange mPrevPrefValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/MultiLineTitleEditTextPreference;->getOrder()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 67
    .local v1, pos:I
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_3

    .line 68
    const-string v4, "SomcRejectMsgSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/phone/MultiLineTitleEditTextPreference;->setValue(Ljava/lang/String;)V

    .line 71
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 72
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v4

    new-instance v5, Lcom/android/phone/SomcRejectMsgSetting$UpdateCallback;

    iget-object v6, p0, Lcom/android/phone/SomcRejectMsgSetting$1;->this$0:Lcom/android/phone/SomcRejectMsgSetting;

    invoke-direct {v5, v6, v0, v2}, Lcom/android/phone/SomcRejectMsgSetting$UpdateCallback;-><init>(Lcom/android/phone/SomcRejectMsgSetting;Lcom/android/phone/MultiLineTitleEditTextPreference;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/phone/SomcRejectMsgManager;->updateRejMsg(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V

    goto :goto_0
.end method
