.class public Lcom/android/phone/IccDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IccDepersonalizationPanel$5;
    }
.end annotation


# static fields
.field private static final NETWORK:I


# instance fields
.field private final ENTRY:I

.field private final ERROR:I

.field private final IN_PROGRESS:I

.field private final SUCCESS:I

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaderSize:I

.field private final mOemIdentifier:Ljava/lang/String;

.field private mPersoSubtype:I

.field private mPersoSubtypeText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v0

    sput v0, Lcom/android/phone/IccDepersonalizationPanel;->NETWORK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 64
    const-string v0, "QUALCOMM"

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mOemIdentifier:Ljava/lang/String;

    .line 65
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHeaderSize:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 87
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 103
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 312
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 133
    sget v0, Lcom/android/phone/IccDepersonalizationPanel;->NETWORK:I

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "subtype"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 64
    const-string v0, "QUALCOMM"

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mOemIdentifier:Ljava/lang/String;

    .line 65
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHeaderSize:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 87
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 103
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 312
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 139
    iput p2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccDepersonalizationPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IccDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/IccDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IccDepersonalizationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IccDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private displayStatus(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, label:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    aget-object v1, v2, v3

    .line 215
    .local v1, persosubtype:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    sget-object v2, Lcom/android/phone/IccDepersonalizationPanel$5;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 282
    packed-switch p1, :pswitch_data_1

    .line 298
    :goto_0
    if-nez p1, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 305
    :goto_1
    return-void

    .line 217
    :pswitch_0
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 219
    :pswitch_1
    const v0, 0x7f0b01a8

    .line 220
    goto :goto_0

    .line 222
    :pswitch_2
    const v0, 0x7f0b01af

    .line 223
    goto :goto_0

    .line 225
    :pswitch_3
    const v0, 0x7f0b01b4

    .line 226
    goto :goto_0

    .line 228
    :pswitch_4
    const v0, 0x7f0b01b9

    goto :goto_0

    .line 233
    :pswitch_5
    packed-switch p1, :pswitch_data_3

    goto :goto_0

    .line 235
    :pswitch_6
    const v0, 0x7f0b01a9

    .line 236
    goto :goto_0

    .line 238
    :pswitch_7
    const v0, 0x7f0b01b1

    .line 239
    goto :goto_0

    .line 241
    :pswitch_8
    const v0, 0x7f0b01b6

    .line 242
    goto :goto_0

    .line 244
    :pswitch_9
    const v0, 0x7f0b01bb

    goto :goto_0

    .line 249
    :pswitch_a
    packed-switch p1, :pswitch_data_4

    goto :goto_0

    .line 251
    :pswitch_b
    const v0, 0x7f0b01aa

    .line 252
    goto :goto_0

    .line 254
    :pswitch_c
    const v0, 0x7f0b01b0

    .line 255
    goto :goto_0

    .line 257
    :pswitch_d
    const v0, 0x7f0b01b5

    .line 258
    goto :goto_0

    .line 260
    :pswitch_e
    const v0, 0x7f0b01ba

    goto :goto_0

    .line 265
    :pswitch_f
    packed-switch p1, :pswitch_data_5

    goto :goto_0

    .line 267
    :pswitch_10
    const v0, 0x7f0b01ab

    .line 268
    goto :goto_0

    .line 270
    :pswitch_11
    const v0, 0x7f0b01b2

    .line 271
    goto :goto_0

    .line 273
    :pswitch_12
    const v0, 0x7f0b01b7

    .line 274
    goto :goto_0

    .line 276
    :pswitch_13
    const v0, 0x7f0b01bc

    goto :goto_0

    .line 284
    :pswitch_14
    const v0, 0x7f0b01a7

    .line 285
    goto :goto_0

    .line 287
    :pswitch_15
    const v0, 0x7f0b01ae

    .line 288
    goto :goto_0

    .line 290
    :pswitch_16
    const v0, 0x7f0b01b3

    .line 291
    goto :goto_0

    .line 293
    :pswitch_17
    const v0, 0x7f0b01b8

    goto :goto_0

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch

    .line 282
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 217
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 233
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 249
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 265
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private hideAlert()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 320
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->setContentView(I)V

    .line 148
    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 149
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 150
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, text:Ljava/lang/CharSequence;
    move-object v0, v1

    .line 154
    check-cast v0, Landroid/text/Spannable;

    .line 155
    .local v0, span:Landroid/text/Spannable;
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 157
    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 158
    const v2, 0x7f070041

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    .line 159
    invoke-direct {p0, v5}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    .line 161
    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 162
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 167
    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Enabling \'Dismiss\' button..."

    invoke-direct {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :goto_0
    const v2, 0x7f070045

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 178
    const v2, 0x7f070046

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 180
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 181
    return-void

    .line 172
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_2

    const-string v2, "Removing \'Dismiss\' button..."

    invoke-direct {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 190
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 186
    return-void
.end method
