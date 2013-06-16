.class public Lcom/android/phone/SomcNetworkPreference;
.super Landroid/preference/Preference;
.source "SomcNetworkPreference.java"


# instance fields
.field private currentNetworkIcon:Landroid/widget/ImageView;

.field private mCurrentNetwork:Z

.field private mNetworkAvailability:I

.field private mNetworkRAT:Lcom/android/internal/telephony/OperatorInfo$RAT;

.field private networkAvailability:Landroid/widget/ImageView;

.field private networkTechnologyIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v2, p0, Lcom/android/phone/SomcNetworkPreference;->mCurrentNetwork:Z

    .line 40
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$RAT;->UNDEFINED_OR_NO_CHANGE:Lcom/android/internal/telephony/OperatorInfo$RAT;

    iput-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkRAT:Lcom/android/internal/telephony/OperatorInfo$RAT;

    .line 42
    iput v2, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkAvailability:I

    .line 44
    iput-object v1, p0, Lcom/android/phone/SomcNetworkPreference;->currentNetworkIcon:Landroid/widget/ImageView;

    .line 45
    iput-object v1, p0, Lcom/android/phone/SomcNetworkPreference;->networkAvailability:Landroid/widget/ImageView;

    .line 46
    iput-object v1, p0, Lcom/android/phone/SomcNetworkPreference;->networkTechnologyIcon:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcNetworkPreference;->setLayoutResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 58
    const v0, 0x7f0700ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkAvailability:Landroid/widget/ImageView;

    .line 59
    iget v0, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkAvailability:I

    packed-switch v0, :pswitch_data_0

    .line 71
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkAvailability:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :goto_0
    const v0, 0x7f0700cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkTechnologyIcon:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkRAT:Lcom/android/internal/telephony/OperatorInfo$RAT;

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$RAT;->GSM:Lcom/android/internal/telephony/OperatorInfo$RAT;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OperatorInfo$RAT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkTechnologyIcon:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkTechnologyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :goto_1
    const v0, 0x7f0700d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->currentNetworkIcon:Landroid/widget/ImageView;

    .line 96
    iget-boolean v0, p0, Lcom/android/phone/SomcNetworkPreference;->mCurrentNetwork:Z

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->currentNetworkIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :goto_2
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkAvailability:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkAvailability:Landroid/widget/ImageView;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkAvailability:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkRAT:Lcom/android/internal/telephony/OperatorInfo$RAT;

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$RAT;->WCDMA:Lcom/android/internal/telephony/OperatorInfo$RAT;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OperatorInfo$RAT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkTechnologyIcon:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkTechnologyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkRAT:Lcom/android/internal/telephony/OperatorInfo$RAT;

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$RAT;->LTE:Lcom/android/internal/telephony/OperatorInfo$RAT;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OperatorInfo$RAT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkTechnologyIcon:Landroid/widget/ImageView;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkTechnologyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->networkTechnologyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->currentNetworkIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentNetwork()V
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/phone/SomcNetworkPreference;->mCurrentNetwork:Z

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcNetworkPreference;->mCurrentNetwork:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/phone/SomcNetworkPreference;->notifyChanged()V

    .line 111
    :cond_0
    return-void
.end method

.method public setHomeNetwork()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 150
    iget v0, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkAvailability:I

    if-eq v0, v1, :cond_0

    .line 151
    iput v1, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkAvailability:I

    .line 152
    invoke-virtual {p0}, Lcom/android/phone/SomcNetworkPreference;->notifyChanged()V

    .line 154
    :cond_0
    return-void
.end method

.method public setNetworkNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 127
    iget v0, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkAvailability:I

    if-eq v0, v1, :cond_0

    .line 128
    iput v1, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkAvailability:I

    .line 129
    invoke-virtual {p0}, Lcom/android/phone/SomcNetworkPreference;->notifyChanged()V

    .line 131
    :cond_0
    return-void
.end method

.method public setNetworkRAT(Lcom/android/internal/telephony/OperatorInfo$RAT;)V
    .locals 1
    .parameter "rat"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkRAT:Lcom/android/internal/telephony/OperatorInfo$RAT;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/OperatorInfo$RAT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/android/phone/SomcNetworkPreference;->mNetworkRAT:Lcom/android/internal/telephony/OperatorInfo$RAT;

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/SomcNetworkPreference;->notifyChanged()V

    .line 143
    :cond_0
    return-void
.end method

.method public unsetCurrentNetwork()V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/phone/SomcNetworkPreference;->mCurrentNetwork:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcNetworkPreference;->mCurrentNetwork:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/SomcNetworkPreference;->notifyChanged()V

    .line 121
    :cond_0
    return-void
.end method
