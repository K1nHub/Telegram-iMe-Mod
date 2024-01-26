package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
/* renamed from: org.telegram.ui.Cells.ManageChatUserCell */
/* loaded from: classes5.dex */
public class ManageChatUserCell extends FrameLayout {
    private final AvatarDrawable avatarDrawable;
    private final BackupImageView avatarImageView;
    private final int currentAccount;
    private CharSequence currentName;
    private Object currentObject;
    private CharSequence currentStatus;
    private ImageView customImageView;
    private ManageChatUserCellDelegate delegate;
    private int dividerColor;
    private boolean isAdmin;
    private TLRPC$FileLocation lastAvatar;
    private String lastName;
    private int lastStatus;
    private final int namePadding;
    private final SimpleTextView nameTextView;
    private boolean needDivider;
    private ImageView optionsButton;
    private final Theme.ResourcesProvider resourcesProvider;
    private int statusColor;
    private int statusOnlineColor;
    private final SimpleTextView statusTextView;
    private final StoriesUtilities.AvatarStoryParams storyAvatarParams;
    private TL_stories$StoryItem storyItem;

    /* renamed from: org.telegram.ui.Cells.ManageChatUserCell$ManageChatUserCellDelegate */
    /* loaded from: classes5.dex */
    public interface ManageChatUserCellDelegate {
        boolean onOptionsButtonCheck(ManageChatUserCell manageChatUserCell, boolean z);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public ManageChatUserCell(Context context, int i, int i2, boolean z) {
        this(context, i, i2, z, null);
    }

    public ManageChatUserCell(Context context, int i, int i2, boolean z, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.dividerColor = -1;
        this.currentAccount = UserConfig.selectedAccount;
        this.storyAvatarParams = new StoriesUtilities.AvatarStoryParams(false);
        this.resourcesProvider = resourcesProvider;
        this.statusColor = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider);
        this.statusOnlineColor = Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, resourcesProvider);
        this.namePadding = i2;
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Cells.ManageChatUserCell.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                int m107dp;
                if (ManageChatUserCell.this.storyItem != null) {
                    float m107dp2 = AndroidUtilities.m107dp(1);
                    ManageChatUserCell.this.storyAvatarParams.originalAvatarRect.set(m107dp2, m107dp2, getMeasuredWidth() - m107dp, getMeasuredHeight() - m107dp);
                    ManageChatUserCell.this.storyAvatarParams.drawSegments = false;
                    ManageChatUserCell.this.storyAvatarParams.animate = false;
                    ManageChatUserCell.this.storyAvatarParams.drawInside = true;
                    ManageChatUserCell.this.storyAvatarParams.isArchive = false;
                    ManageChatUserCell.this.storyAvatarParams.resourcesProvider = resourcesProvider;
                    ManageChatUserCell.this.storyAvatarParams.storyItem = ManageChatUserCell.this.storyItem;
                    StoriesUtilities.drawAvatarWithStory(ManageChatUserCell.this.storyItem.dialogId, canvas, this.imageReceiver, ManageChatUserCell.this.storyAvatarParams);
                    return;
                }
                super.onDraw(canvas);
            }
        };
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m107dp(23));
        boolean z2 = LocaleController.isRTL;
        addView(backupImageView, LayoutHelper.createFrame(46, 46, (z2 ? 5 : 3) | 48, z2 ? 0 : i + 7, 8, z2 ? i + 7 : 0, 0));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.nameTextView = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        simpleTextView.setTextSize(17);
        simpleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        simpleTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        boolean z3 = LocaleController.isRTL;
        addView(simpleTextView, LayoutHelper.createFrame(-1, 20.0f, (z3 ? 5 : 3) | 48, z3 ? 46.0f : i2 + 68, 11.5f, z3 ? i2 + 68 : 46.0f, (float) BitmapDescriptorFactory.HUE_RED));
        NotificationCenter.listenEmojiLoading(simpleTextView);
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        this.statusTextView = simpleTextView2;
        simpleTextView2.setTextSize(14);
        simpleTextView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        boolean z4 = LocaleController.isRTL;
        addView(simpleTextView2, LayoutHelper.createFrame(-1, 20.0f, (z4 ? 5 : 3) | 48, z4 ? 28.0f : i2 + 68, 34.5f, z4 ? i2 + 68 : 28.0f, (float) BitmapDescriptorFactory.HUE_RED));
        if (z) {
            ImageView imageView = new ImageView(context);
            this.optionsButton = imageView;
            imageView.setFocusable(false);
            this.optionsButton.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(Theme.key_stickers_menuSelector, resourcesProvider)));
            this.optionsButton.setImageResource(C3632R.C3634drawable.ic_ab_other);
            this.optionsButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_stickers_menu, resourcesProvider), PorterDuff.Mode.MULTIPLY));
            this.optionsButton.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.optionsButton, LayoutHelper.createFrame(60, 64, (LocaleController.isRTL ? 3 : 5) | 48));
            this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.ManageChatUserCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ManageChatUserCell.this.lambda$new$0(view);
                }
            });
            this.optionsButton.setContentDescription(LocaleController.getString("AccDescrUserOptions", C3632R.string.AccDescrUserOptions));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.delegate.onOptionsButtonCheck(this, true);
    }

    public void setStoryItem(TL_stories$StoryItem tL_stories$StoryItem, View.OnClickListener onClickListener) {
        this.storyItem = tL_stories$StoryItem;
        this.avatarImageView.setOnClickListener(onClickListener);
    }

    public TL_stories$StoryItem getStoryItem() {
        return this.storyItem;
    }

    public BackupImageView getAvatarImageView() {
        return this.avatarImageView;
    }

    public StoriesUtilities.AvatarStoryParams getStoryAvatarParams() {
        return this.storyAvatarParams;
    }

    public void setCustomRightImage(int i) {
        ImageView imageView = new ImageView(getContext());
        this.customImageView = imageView;
        imageView.setImageResource(i);
        this.customImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.customImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_voipgroup_mutedIconUnscrolled, this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
        addView(this.customImageView, LayoutHelper.createFrame(52, 64, (LocaleController.isRTL ? 3 : 5) | 48));
    }

    public void setCustomImageVisible(boolean z) {
        ImageView imageView = this.customImageView;
        if (imageView == null) {
            return;
        }
        imageView.setVisibility(z ? 0 : 8);
    }

    public void setData(Object obj, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        float f;
        float f2;
        if (obj == null) {
            this.currentStatus = null;
            this.currentName = null;
            this.currentObject = null;
            this.nameTextView.setText("");
            this.statusTextView.setText("");
            this.avatarImageView.setImageDrawable(null);
            return;
        }
        this.currentStatus = charSequence2;
        this.currentName = charSequence;
        this.currentObject = obj;
        float f3 = 20.5f;
        if (this.optionsButton != null) {
            boolean onOptionsButtonCheck = this.delegate.onOptionsButtonCheck(this, false);
            this.optionsButton.setVisibility(onOptionsButtonCheck ? 0 : 4);
            SimpleTextView simpleTextView = this.nameTextView;
            boolean z2 = LocaleController.isRTL;
            int i = (z2 ? 5 : 3) | 48;
            float f4 = z2 ? onOptionsButtonCheck ? 46 : 28 : this.namePadding + 68;
            if (charSequence2 == null || charSequence2.length() > 0) {
                f3 = 11.5f;
            }
            simpleTextView.setLayoutParams(LayoutHelper.createFrame(-1, 20.0f, i, f4, f3, LocaleController.isRTL ? this.namePadding + 68 : onOptionsButtonCheck ? 46 : 28, (float) BitmapDescriptorFactory.HUE_RED));
            SimpleTextView simpleTextView2 = this.statusTextView;
            boolean z3 = LocaleController.isRTL;
            int i2 = (z3 ? 5 : 3) | 48;
            float f5 = z3 ? onOptionsButtonCheck ? 46 : 28 : this.namePadding + 68;
            if (z3) {
                f2 = this.namePadding + 68;
            } else {
                f2 = onOptionsButtonCheck ? 46 : 28;
            }
            simpleTextView2.setLayoutParams(LayoutHelper.createFrame(-1, 20.0f, i2, f5, 34.5f, f2, (float) BitmapDescriptorFactory.HUE_RED));
        } else {
            ImageView imageView = this.customImageView;
            if (imageView != null) {
                boolean z4 = imageView.getVisibility() == 0;
                SimpleTextView simpleTextView3 = this.nameTextView;
                boolean z5 = LocaleController.isRTL;
                int i3 = (z5 ? 5 : 3) | 48;
                float f6 = z5 ? z4 ? 54 : 28 : this.namePadding + 68;
                if (charSequence2 == null || charSequence2.length() > 0) {
                    f3 = 11.5f;
                }
                simpleTextView3.setLayoutParams(LayoutHelper.createFrame(-1, 20.0f, i3, f6, f3, LocaleController.isRTL ? this.namePadding + 68 : z4 ? 54 : 28, (float) BitmapDescriptorFactory.HUE_RED));
                SimpleTextView simpleTextView4 = this.statusTextView;
                boolean z6 = LocaleController.isRTL;
                int i4 = (z6 ? 5 : 3) | 48;
                float f7 = z6 ? z4 ? 54 : 28 : this.namePadding + 68;
                if (z6) {
                    f = this.namePadding + 68;
                } else {
                    f = z4 ? 54 : 28;
                }
                simpleTextView4.setLayoutParams(LayoutHelper.createFrame(-1, 20.0f, i4, f7, 34.5f, f, (float) BitmapDescriptorFactory.HUE_RED));
            }
        }
        this.needDivider = z;
        setWillNotDraw(!z);
        update(0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(64) + (this.needDivider ? 1 : 0), 1073741824));
    }

    public long getUserId() {
        Object obj = this.currentObject;
        if (obj instanceof TLRPC$User) {
            return ((TLRPC$User) obj).f1751id;
        }
        return 0L;
    }

    public void setStatusColors(int i, int i2) {
        this.statusColor = i;
        this.statusOnlineColor = i2;
    }

    public void setIsAdmin(boolean z) {
        this.isAdmin = z;
    }

    public boolean hasAvatarSet() {
        return this.avatarImageView.getImageReceiver().hasNotThumb();
    }

    public void setNameColor(int i) {
        this.nameTextView.setTextColor(i);
    }

    public void setDividerColor(int i) {
        this.dividerColor = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x01a1, code lost:
        if (r11.equals(r6) == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0067, code lost:
        if (r11.equals(r10.lastName) == false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(int r11) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ManageChatUserCell.update(int):void");
    }

    public void recycle() {
        this.avatarImageView.getImageReceiver().cancelLoadImage();
    }

    public void setDelegate(ManageChatUserCellDelegate manageChatUserCellDelegate) {
        this.delegate = manageChatUserCellDelegate;
    }

    public Object getCurrentObject() {
        return this.currentObject;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            int i = this.dividerColor;
            if (i >= 0) {
                Theme.dividerExtraPaint.setColor(Theme.getColor(i, this.resourcesProvider));
            }
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m107dp(68), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m107dp(68) : 0), getMeasuredHeight() - 1, this.dividerColor >= 0 ? Theme.dividerExtraPaint : Theme.dividerPaint);
        }
    }
}
