.class public Lcom/android/stockssettings/BandMode;
.super Landroid/app/Activity;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stockssettings/BandMode$BandListItem;
    }
.end annotation


# static fields
.field private static final BAND_NAMES:[Ljava/lang/String;


# instance fields
.field private mBandList:Landroid/widget/ListView;

.field private mBandListAdapter:Landroid/widget/ArrayAdapter;

.field private mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressPanel:Landroid/content/DialogInterface;

.field private mTargetBand:Lcom/android/stockssettings/BandMode$BandListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Automatic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EURO Band     (GSM-900/DCS-1800/WCDMA-IMT-2000)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "USA Band      (GSM-850/PCS-1900/WCDMA-850/WCDMA-PCS-1900)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "JAPAN Band    (WCDMA-800/WCDMA-IMT-2000)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AUS Band      (GSM-900/DCS-1800/WCDMA-850/WCDMA-IMT-2000)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AUS2 Band     (GSM-900/DCS-1800/WCDMA-850)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Cellular      (800-MHz)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PCS           (1900-MHz)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Band Class 3  (JTACS Band)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Band Class 4  (Korean PCS Band)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Band Class 5  (450-MHz Band)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Band Class 6  (2-GMHz IMT2000 Band)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Band Class 7  (Upper 700-MHz Band)"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Band Class 8  (1800-MHz Band)"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Band Class 9  (900-MHz Band)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Band Class 10 (Secondary 800-MHz Band)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Band Class 11 (400-MHz European PAMR Band)"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Band Class 15 (AWS Band)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Band Class 16 (US 2.5-GHz Band)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/stockssettings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/stockssettings/BandMode;->mTargetBand:Lcom/android/stockssettings/BandMode$BandListItem;

    .line 67
    iput-object v0, p0, Lcom/android/stockssettings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 92
    new-instance v0, Lcom/android/stockssettings/BandMode$1;

    invoke-direct {v0, p0}, Lcom/android/stockssettings/BandMode$1;-><init>(Lcom/android/stockssettings/BandMode;)V

    iput-object v0, p0, Lcom/android/stockssettings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 202
    new-instance v0, Lcom/android/stockssettings/BandMode$2;

    invoke-direct {v0, p0}, Lcom/android/stockssettings/BandMode$2;-><init>(Lcom/android/stockssettings/BandMode;)V

    iput-object v0, p0, Lcom/android/stockssettings/BandMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stockssettings/BandMode;)Lcom/android/stockssettings/BandMode$BandListItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/BandMode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/stockssettings/BandMode;->mTargetBand:Lcom/android/stockssettings/BandMode$BandListItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/stockssettings/BandMode;Lcom/android/stockssettings/BandMode$BandListItem;)Lcom/android/stockssettings/BandMode$BandListItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/BandMode;
    .param p1, "x1"    # Lcom/android/stockssettings/BandMode$BandListItem;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/stockssettings/BandMode;->mTargetBand:Lcom/android/stockssettings/BandMode$BandListItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/stockssettings/BandMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/BandMode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/stockssettings/BandMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stockssettings/BandMode;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/BandMode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/stockssettings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/stockssettings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stockssettings/BandMode;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/BandMode;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/stockssettings/BandMode;->bandListLoaded(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/stockssettings/BandMode;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/BandMode;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/stockssettings/BandMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private bandListLoaded(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 147
    iget-object v4, p0, Lcom/android/stockssettings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/stockssettings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    invoke-interface {v4}, Landroid/content/DialogInterface;->dismiss()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/stockssettings/BandMode;->clearList()V

    .line 151
    const/4 v0, 0x0

    .line 154
    .local v0, "addBandSuccess":Z
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 155
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v1, v4

    check-cast v1, [I

    .line 157
    .local v1, "bands":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 158
    new-instance v3, Lcom/android/stockssettings/BandMode$BandListItem;

    aget v4, v1, v2

    invoke-direct {v3, v4}, Lcom/android/stockssettings/BandMode$BandListItem;-><init>(I)V

    .line 159
    .local v3, "item":Lcom/android/stockssettings/BandMode$BandListItem;
    iget-object v4, p0, Lcom/android/stockssettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v3    # "item":Lcom/android/stockssettings/BandMode$BandListItem;
    :cond_1
    const/4 v0, 0x1

    .line 165
    .end local v1    # "bands":[I
    .end local v2    # "i":I
    :cond_2
    if-nez v0, :cond_3

    .line 167
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget-object v4, Lcom/android/stockssettings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 168
    new-instance v3, Lcom/android/stockssettings/BandMode$BandListItem;

    invoke-direct {v3, v2}, Lcom/android/stockssettings/BandMode$BandListItem;-><init>(I)V

    .line 169
    .restart local v3    # "item":Lcom/android/stockssettings/BandMode$BandListItem;
    iget-object v4, p0, Lcom/android/stockssettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/stockssettings/BandMode$BandListItem;
    :cond_3
    iget-object v4, p0, Lcom/android/stockssettings/BandMode;->mBandList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z

    .line 174
    return-void
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 192
    :goto_0
    iget-object v0, p0, Lcom/android/stockssettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/stockssettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/stockssettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0904b6

    invoke-virtual {p0, v2}, Lcom/android/stockssettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stockssettings/BandMode;->mTargetBand:Lcom/android/stockssettings/BandMode$BandListItem;

    invoke-virtual {v2}, Lcom/android/stockssettings/BandMode$BandListItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "status":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0904b7

    invoke-virtual {p0, v2}, Lcom/android/stockssettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stockssettings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 189
    return-void

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0904b8

    invoke-virtual {p0, v2}, Lcom/android/stockssettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadBandList()V
    .locals 4

    .prologue
    .line 129
    const v2, 0x7f0904b5

    invoke-virtual {p0, v2}, Lcom/android/stockssettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stockssettings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 139
    iget-object v2, p0, Lcom/android/stockssettings/BandMode;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/stockssettings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/BandMode;->requestWindowFeature(I)Z

    .line 75
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/BandMode;->setContentView(I)V

    .line 77
    const v0, 0x7f0904b4

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/BandMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/stockssettings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 81
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stockssettings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    const v0, 0x7f100021

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/BandMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/stockssettings/BandMode;->mBandList:Landroid/widget/ListView;

    .line 84
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/stockssettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    .line 86
    iget-object v0, p0, Lcom/android/stockssettings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/stockssettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/android/stockssettings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/stockssettings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/android/stockssettings/BandMode;->loadBandList()V

    .line 90
    return-void
.end method
