package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.util.LongSparseArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserObject;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$TL_chatInviteImporter;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.MemberRequestCell */
/* loaded from: classes5.dex */
public class MemberRequestCell extends FrameLayout {
    private final AvatarDrawable avatarDrawable;
    private final BackupImageView avatarImageView;
    private TLRPC$TL_chatInviteImporter importer;
    private boolean isNeedDivider;
    private final SimpleTextView nameTextView;
    private final SimpleTextView statusTextView;

    /* renamed from: org.telegram.ui.Cells.MemberRequestCell$OnClickListener */
    /* loaded from: classes5.dex */
    public interface OnClickListener {
        void onAddClicked(TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter);

        void onDismissClicked(TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter);
    }

    public MemberRequestCell(Context context, final OnClickListener onClickListener, boolean z) {
        super(context);
        int i;
        String str;
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(getContext());
        this.avatarImageView = backupImageView;
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        this.nameTextView = simpleTextView;
        SimpleTextView simpleTextView2 = new SimpleTextView(getContext());
        this.statusTextView = simpleTextView2;
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(23));
        addView(backupImageView, LayoutHelper.createFrame(46, 46, LocaleController.isRTL ? 5 : 3, 12, 8, 12, 0));
        simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        simpleTextView.setMaxLines(1);
        simpleTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        simpleTextView.setTextSize(17);
        simpleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        boolean z2 = LocaleController.isRTL;
        addView(simpleTextView, LayoutHelper.createFrame(-1, -2, 48, z2 ? 12 : 74, 12, z2 ? 74 : 12, 0));
        simpleTextView2.setGravity(LocaleController.isRTL ? 5 : 3);
        simpleTextView2.setMaxLines(1);
        simpleTextView2.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        simpleTextView2.setTextSize(14);
        boolean z3 = LocaleController.isRTL;
        addView(simpleTextView2, LayoutHelper.createFrame(-1, -2, 48, z3 ? 12 : 74, 36, z3 ? 74 : 12, 0));
        int m50dp = AndroidUtilities.m50dp(17);
        TextView textView = new TextView(getContext());
        textView.setBackground(Theme.AdaptiveRipple.filledRect("featuredStickers_addButton", 4.0f));
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView.setMaxLines(1);
        textView.setPadding(m50dp, 0, m50dp, 0);
        if (z) {
            i = C3301R.string.AddToChannel;
            str = "AddToChannel";
        } else {
            i = C3301R.string.AddToGroup;
            str = "AddToGroup";
        }
        textView.setText(LocaleController.getString(str, i));
        textView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        textView.setTextSize(14.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.MemberRequestCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MemberRequestCell.this.lambda$new$0(onClickListener, view);
            }
        });
        boolean z4 = LocaleController.isRTL;
        addView(textView, LayoutHelper.createFrame(-2, 32, z4 ? 5 : 3, z4 ? 0 : 73, 62, z4 ? 73 : 0, 0));
        float measureText = textView.getPaint().measureText(textView.getText().toString()) + (m50dp * 2);
        TextView textView2 = new TextView(getContext());
        textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), 0, Theme.getColor("listSelectorSDK21"), -16777216));
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setMaxLines(1);
        textView2.setPadding(m50dp, 0, m50dp, 0);
        textView2.setText(LocaleController.getString("Dismiss", C3301R.string.Dismiss));
        textView2.setTextColor(Theme.getColor("windowBackgroundWhiteBlueText"));
        textView2.setTextSize(14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.MemberRequestCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MemberRequestCell.this.lambda$new$1(onClickListener, view);
            }
        });
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, AndroidUtilities.m50dp(32), LocaleController.isRTL ? 5 : 3);
        layoutParams.topMargin = AndroidUtilities.m50dp(62);
        layoutParams.leftMargin = LocaleController.isRTL ? 0 : (int) (AndroidUtilities.m50dp(79) + measureText);
        layoutParams.rightMargin = LocaleController.isRTL ? (int) (measureText + AndroidUtilities.m50dp(79)) : 0;
        addView(textView2, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(OnClickListener onClickListener, View view) {
        TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter;
        if (onClickListener == null || (tLRPC$TL_chatInviteImporter = this.importer) == null) {
            return;
        }
        onClickListener.onAddClicked(tLRPC$TL_chatInviteImporter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(OnClickListener onClickListener, View view) {
        TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter;
        if (onClickListener == null || (tLRPC$TL_chatInviteImporter = this.importer) == null) {
            return;
        }
        onClickListener.onDismissClicked(tLRPC$TL_chatInviteImporter);
    }

    public void setData(LongSparseArray<TLRPC$User> longSparseArray, TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter, boolean z) {
        this.importer = tLRPC$TL_chatInviteImporter;
        this.isNeedDivider = z;
        setWillNotDraw(!z);
        TLRPC$User tLRPC$User = longSparseArray.get(tLRPC$TL_chatInviteImporter.user_id);
        this.avatarDrawable.setInfo(tLRPC$User);
        this.avatarImageView.setForUserOrChat(tLRPC$User, this.avatarDrawable);
        this.nameTextView.setText(UserObject.getUserName(tLRPC$User));
        String formatDateAudio = LocaleController.formatDateAudio(tLRPC$TL_chatInviteImporter.date, false);
        long j = tLRPC$TL_chatInviteImporter.approved_by;
        if (j == 0) {
            this.statusTextView.setText(LocaleController.formatString("RequestedToJoinAt", C3301R.string.RequestedToJoinAt, formatDateAudio));
            return;
        }
        TLRPC$User tLRPC$User2 = longSparseArray.get(j);
        if (tLRPC$User2 != null) {
            this.statusTextView.setText(LocaleController.formatString("AddedBy", C3301R.string.AddedBy, UserObject.getFirstName(tLRPC$User2), formatDateAudio));
        } else {
            this.statusTextView.setText("");
        }
    }

    public TLRPC$TL_chatInviteImporter getImporter() {
        return this.importer;
    }

    public BackupImageView getAvatarImageView() {
        return this.avatarImageView;
    }

    public String getStatus() {
        return this.statusTextView.getText().toString();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(107), 1073741824));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.isNeedDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(72), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m50dp(72) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }
}
