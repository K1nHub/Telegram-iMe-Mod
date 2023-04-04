package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.extractor.p016ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$RequestPeerType;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_requestPeerTypeBroadcast;
import org.telegram.tgnet.TLRPC$TL_requestPeerTypeChat;
/* renamed from: org.telegram.ui.Cells.DialogsRequestedEmptyCell */
/* loaded from: classes5.dex */
public class DialogsRequestedEmptyCell extends LinearLayout implements NotificationCenter.NotificationCenterDelegate {
    TextView buttonView;
    int currentAccount;
    BackupImageView stickerView;
    TextView subtitleView;
    TextView titleView;

    protected void onButtonClick() {
    }

    public DialogsRequestedEmptyCell(Context context) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        setOrientation(1);
        setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        LinearLayout linearLayout = new LinearLayout(this, context) { // from class: org.telegram.ui.Cells.DialogsRequestedEmptyCell.1
            Paint paint;
            Path path = new Path();

            {
                Paint paint = new Paint(1);
                this.paint = paint;
                paint.setColor(Theme.getColor("windowBackgroundWhite"));
                this.paint.setShadowLayer(AndroidUtilities.m51dp(1.33f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m51dp(0.33f), 503316480);
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onDraw(Canvas canvas) {
                canvas.drawPath(this.path, this.paint);
                super.onDraw(canvas);
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                this.path.rewind();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(6), getMeasuredWidth() - AndroidUtilities.m50dp(12), getMeasuredHeight() - AndroidUtilities.m50dp(12));
                this.path.addRoundRect(rectF, AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), Path.Direction.CW);
            }
        };
        linearLayout.setWillNotDraw(false);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.m50dp(32), AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(32), AndroidUtilities.m50dp(32));
        BackupImageView backupImageView = new BackupImageView(context);
        this.stickerView = backupImageView;
        backupImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.DialogsRequestedEmptyCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsRequestedEmptyCell.this.lambda$new$0(view);
            }
        });
        updateSticker();
        linearLayout.addView(this.stickerView, LayoutHelper.createLinear((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, (int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 49));
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setGravity(17);
        this.titleView.setTextSize(1, 18.0f);
        this.titleView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        linearLayout.addView(this.titleView, LayoutHelper.createLinear(-1, -2, 49, 0, 6, 0, 0));
        TextView textView2 = new TextView(context);
        this.subtitleView = textView2;
        textView2.setGravity(17);
        this.subtitleView.setTextSize(1, 14.0f);
        this.subtitleView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        linearLayout.addView(this.subtitleView, LayoutHelper.createLinear(-1, -2, 49, 0, 7, 0, 0));
        TextView textView3 = new TextView(context);
        this.buttonView = textView3;
        textView3.setGravity(17);
        this.buttonView.setBackground(Theme.AdaptiveRipple.filledRect("featuredStickers_addButton", 8.0f));
        this.buttonView.setTextSize(1, 14.0f);
        this.buttonView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        this.buttonView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.buttonView.setPadding(AndroidUtilities.m50dp(14), AndroidUtilities.m50dp(14), AndroidUtilities.m50dp(14), AndroidUtilities.m50dp(14));
        this.buttonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.DialogsRequestedEmptyCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsRequestedEmptyCell.this.lambda$new$1(view);
            }
        });
        linearLayout.addView(this.buttonView, LayoutHelper.createLinear(-1, -2, 49, 0, 18, 0, 0));
        addView(linearLayout, LayoutHelper.createLinear(-1, -2));
        set(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.stickerView.getImageReceiver().startAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        onButtonClick();
    }

    public void set(TLRPC$RequestPeerType tLRPC$RequestPeerType) {
        if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeBroadcast) {
            this.titleView.setText(LocaleController.getString("NoSuchChannels", C3316R.string.NoSuchChannels));
            this.subtitleView.setText(LocaleController.getString("NoSuchChannelsInfo", C3316R.string.NoSuchChannelsInfo));
            this.buttonView.setVisibility(0);
            this.buttonView.setText(LocaleController.getString("CreateChannelForThis", C3316R.string.CreateChannelForThis));
        } else if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeChat) {
            this.titleView.setText(LocaleController.getString("NoSuchGroups", C3316R.string.NoSuchGroups));
            this.subtitleView.setText(LocaleController.getString("NoSuchGroupsInfo", C3316R.string.NoSuchGroupsInfo));
            this.buttonView.setVisibility(0);
            this.buttonView.setText(LocaleController.getString("CreateGroupForThis", C3316R.string.CreateGroupForThis));
        } else {
            this.titleView.setText(LocaleController.getString("NoSuchUsers", C3316R.string.NoSuchUsers));
            this.subtitleView.setText(LocaleController.getString("NoSuchUsersInfo", C3316R.string.NoSuchUsersInfo));
            this.buttonView.setVisibility(8);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.diceStickersDidLoad);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.diceStickersDidLoad);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.diceStickersDidLoad && AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME.equals((String) objArr[0]) && getVisibility() == 0) {
            updateSticker();
        }
    }

    private void updateSticker() {
        TLRPC$TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
        if (stickerSetByName == null) {
            stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
        }
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = stickerSetByName;
        TLRPC$Document tLRPC$Document = (tLRPC$TL_messages_stickerSet == null || 1 >= tLRPC$TL_messages_stickerSet.documents.size()) ? null : tLRPC$TL_messages_stickerSet.documents.get(1);
        if (tLRPC$Document != null) {
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$Document.thumbs, "windowBackgroundGray", 0.2f);
            if (svgThumb != null) {
                svgThumb.overrideWidthAndHeight(512, 512);
            }
            this.stickerView.setImage(ImageLocation.getForDocument(tLRPC$Document), "130_130", "tgs", svgThumb, tLRPC$TL_messages_stickerSet);
            this.stickerView.getImageReceiver().setAutoRepeat(2);
            return;
        }
        MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME, false, tLRPC$TL_messages_stickerSet == null);
        this.stickerView.getImageReceiver().clearImage();
    }
}
