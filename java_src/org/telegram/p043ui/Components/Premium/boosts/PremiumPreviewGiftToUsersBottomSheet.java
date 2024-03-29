package org.telegram.p043ui.Components.Premium.boosts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.p043ui.Components.Premium.boosts.cells.DurationWithDiscountCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.selector.SelectorBtnCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_premiumGiftCodeOption;
import org.telegram.tgnet.TLRPC$User;
import p033j$.util.Comparator;
import p033j$.util.function.ToLongFunction;
/* renamed from: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet */
/* loaded from: classes6.dex */
public class PremiumPreviewGiftToUsersBottomSheet extends PremiumPreviewBottomSheet {
    private GradientButtonWithCounterView actionBtn;
    private SelectorBtnCell buttonContainer;
    private final List<TLRPC$TL_premiumGiftCodeOption> giftCodeOptions;
    private int selectedMonths;
    private final List<TLRPC$User> selectedUsers;

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected boolean isAdditionViewClickable(int i) {
        return i == 8;
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected boolean needDefaultPremiumBtn() {
        return false;
    }

    public static void show(List<TLRPC$User> list, List<TLRPC$TL_premiumGiftCodeOption> list2) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        new PremiumPreviewGiftToUsersBottomSheet(lastFragment, UserConfig.selectedAccount, list, list2, lastFragment.getResourceProvider()).show();
    }

    public PremiumPreviewGiftToUsersBottomSheet(BaseFragment baseFragment, int i, List<TLRPC$User> list, List<TLRPC$TL_premiumGiftCodeOption> list2, Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment, i, null, null, resourcesProvider);
        ArrayList arrayList = new ArrayList();
        this.selectedUsers = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.giftCodeOptions = arrayList2;
        this.selectedMonths = 3;
        arrayList.addAll(list);
        arrayList2.addAll(list2);
        Collections.sort(list2, Comparator.CC.comparingLong(new ToLongFunction() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet$$ExternalSyntheticLambda2
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                long j;
                j = ((TLRPC$TL_premiumGiftCodeOption) obj).amount;
                return j;
            }
        }));
        init();
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.paddingRow = 0;
        this.additionStartRow = i;
        List<TLRPC$TL_premiumGiftCodeOption> list = this.giftCodeOptions;
        int size = i + (list != null ? list.size() : 0) + 2;
        this.rowCount = size;
        this.additionEndRow = size;
        this.featuresStartRow = size;
        int size2 = size + this.premiumFeatures.size();
        this.rowCount = size2;
        this.featuresEndRow = size2;
        this.rowCount = size2 + 1;
        this.termsRow = size2;
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    public void setTitle(boolean z) {
        String formatString;
        ((PremiumPreviewBottomSheet) this).titleView[0].setTextSize(1, 20.0f);
        this.subtitleView.setPadding(AndroidUtilities.m107dp(30), 0, AndroidUtilities.m107dp(30), 0);
        this.subtitleView.setLineSpacing(AndroidUtilities.m107dp(2), 1.0f);
        ((PremiumPreviewBottomSheet) this).titleView[0].setText(LocaleController.getString("GiftTelegramPremiumTitle", C3632R.string.GiftTelegramPremiumTitle));
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).bottomMargin = AndroidUtilities.m107dp(16);
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).topMargin = AndroidUtilities.m108dp(4.0f);
        int size = this.selectedUsers.size();
        if (size == 1) {
            formatString = LocaleController.formatString("GiftPremiumUsersGiveAccessManyZero", C3632R.string.GiftPremiumUsersGiveAccessManyZero, LocaleController.formatString("GiftPremiumUsersOne", C3632R.string.GiftPremiumUsersOne, UserObject.getFirstName(this.selectedUsers.get(0))));
        } else if (size == 2) {
            formatString = LocaleController.formatString("GiftPremiumUsersGiveAccessManyZero", C3632R.string.GiftPremiumUsersGiveAccessManyZero, LocaleController.formatString("GiftPremiumUsersTwo", C3632R.string.GiftPremiumUsersTwo, UserObject.getFirstName(this.selectedUsers.get(0)), UserObject.getFirstName(this.selectedUsers.get(1))));
        } else if (size == 3) {
            formatString = LocaleController.formatString("GiftPremiumUsersGiveAccessManyZero", C3632R.string.GiftPremiumUsersGiveAccessManyZero, LocaleController.formatString("GiftPremiumUsersThree", C3632R.string.GiftPremiumUsersThree, UserObject.getFirstName(this.selectedUsers.get(0)), UserObject.getFirstName(this.selectedUsers.get(1)), UserObject.getFirstName(this.selectedUsers.get(2))));
        } else {
            formatString = LocaleController.formatPluralString("GiftPremiumUsersGiveAccessMany", this.selectedUsers.size() - 3, LocaleController.formatString("GiftPremiumUsersThree", C3632R.string.GiftPremiumUsersThree, UserObject.getFirstName(this.selectedUsers.get(0)), UserObject.getFirstName(this.selectedUsers.get(1)), UserObject.getFirstName(this.selectedUsers.get(2))));
        }
        this.subtitleView.setText(AndroidUtilities.replaceTags(formatString));
        this.subtitleView.append("\n");
        this.subtitleView.append("\n");
        SpannableStringBuilder replaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralString("GiftPremiumWillReceiveBoostsPlural", this.selectedUsers.size() * BoostRepository.boostsPerSentGift(), new Object[0]));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(replaceTags);
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C3632R.C3634drawable.mini_boost_button);
        coloredImageSpan.setSize(AndroidUtilities.m107dp(20));
        coloredImageSpan.setWidth(AndroidUtilities.m107dp(11));
        coloredImageSpan.setTranslateX(-AndroidUtilities.m107dp(4));
        coloredImageSpan.setTranslateY(-AndroidUtilities.m107dp(1));
        coloredImageSpan.setColorKey(Theme.key_windowBackgroundWhiteBlueText4);
        int indexOf = TextUtils.indexOf(replaceTags, "⚡");
        if (indexOf >= 0) {
            spannableStringBuilder.setSpan(coloredImageSpan, indexOf, indexOf + 1, 33);
        }
        this.subtitleView.append(spannableStringBuilder);
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected View onCreateAdditionCell(int i, Context context) {
        if (i != 6) {
            if (i != 7) {
                if (i != 8) {
                    return null;
                }
                return new DurationWithDiscountCell(context, this.resourcesProvider);
            }
            return new ShadowSectionCell(context, 12, Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider));
        }
        HeaderCell headerCell = new HeaderCell(context, Theme.key_windowBackgroundWhiteBlueHeader, 21, 12, false, this.resourcesProvider);
        headerCell.setTextSize(15.0f);
        headerCell.setPadding(0, 0, 0, AndroidUtilities.m107dp(2));
        headerCell.setText(LocaleController.getString("GiftPremiumWhatsIncluded", C3632R.string.GiftPremiumWhatsIncluded));
        return headerCell;
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected void onAdditionItemClicked(View view) {
        if (view instanceof DurationWithDiscountCell) {
            DurationWithDiscountCell durationWithDiscountCell = (DurationWithDiscountCell) view;
            this.selectedMonths = durationWithDiscountCell.getOption().months;
            durationWithDiscountCell.markChecked(this.recyclerListView);
            updateActionButton(true);
        }
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected void onBindAdditionCell(View view, int i) {
        if (view instanceof DurationWithDiscountCell) {
            int i2 = i - 1;
            TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption = this.giftCodeOptions.get(i2);
            DurationWithDiscountCell durationWithDiscountCell = (DurationWithDiscountCell) view;
            List<TLRPC$TL_premiumGiftCodeOption> list = this.giftCodeOptions;
            durationWithDiscountCell.setDuration(tLRPC$TL_premiumGiftCodeOption, list.get(list.size() - 1), this.selectedUsers.size(), i2 != this.giftCodeOptions.size() - 1, this.selectedMonths == tLRPC$TL_premiumGiftCodeOption.months);
        }
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected int getAdditionItemViewType(int i) {
        if (i <= this.giftCodeOptions.size()) {
            return 8;
        }
        if (i == this.giftCodeOptions.size() + 1) {
            return 7;
        }
        return i == this.giftCodeOptions.size() + 2 ? 6 : 0;
    }

    private TLRPC$TL_premiumGiftCodeOption getSelectedOption() {
        for (TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption : this.giftCodeOptions) {
            if (tLRPC$TL_premiumGiftCodeOption.months == this.selectedMonths) {
                return tLRPC$TL_premiumGiftCodeOption;
            }
        }
        return this.giftCodeOptions.get(0);
    }

    private void updateActionButton(boolean z) {
        TLRPC$TL_premiumGiftCodeOption selectedOption = getSelectedOption();
        String formatCurrency = BillingController.getInstance().formatCurrency(selectedOption.amount, selectedOption.currency);
        if (this.selectedUsers.size() == 1) {
            this.actionBtn.setText(LocaleController.formatString("GiftSubscriptionFor", C3632R.string.GiftSubscriptionFor, formatCurrency), z);
        } else {
            this.actionBtn.setText(LocaleController.formatPluralString("GiftSubscriptionCountFor", this.selectedUsers.size(), formatCurrency), z);
        }
    }

    private void chooseMaxSelectedMonths() {
        for (TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption : this.giftCodeOptions) {
            this.selectedMonths = Math.max(tLRPC$TL_premiumGiftCodeOption.months, this.selectedMonths);
        }
    }

    private void init() {
        chooseMaxSelectedMonths();
        updateRows();
        this.useBackgroundTopPadding = false;
        setApplyTopPadding(false);
        this.backgroundPaddingTop = 0;
        RecyclerListView recyclerListView = this.recyclerListView;
        int i = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i, 0, i, AndroidUtilities.m107dp(64));
        SelectorBtnCell selectorBtnCell = new SelectorBtnCell(getContext(), this.resourcesProvider, this.recyclerListView);
        this.buttonContainer = selectorBtnCell;
        selectorBtnCell.setClickable(true);
        this.buttonContainer.setOrientation(1);
        this.buttonContainer.setPadding(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8));
        this.buttonContainer.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
        GradientButtonWithCounterView gradientButtonWithCounterView = new GradientButtonWithCounterView(getContext(), true, this.resourcesProvider);
        this.actionBtn = gradientButtonWithCounterView;
        gradientButtonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PremiumPreviewGiftToUsersBottomSheet.this.lambda$init$4(view);
            }
        });
        this.buttonContainer.addView(this.actionBtn, LayoutHelper.createLinear(-1, 48, 87));
        ViewGroup viewGroup = this.containerView;
        SelectorBtnCell selectorBtnCell2 = this.buttonContainer;
        int i2 = this.backgroundPaddingLeft;
        viewGroup.addView(selectorBtnCell2, LayoutHelper.createFrameMarginPx(-1, -2.0f, 87, i2, 0, i2, 0));
        this.overrideTitleIcon = AvatarHolderView.createAvatarsContainer(getContext(), this.selectedUsers);
        updateActionButton(false);
        fixNavigationBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$4(View view) {
        if (this.actionBtn.isLoading()) {
            return;
        }
        this.actionBtn.setLoading(true);
        BoostRepository.payGiftCode(new ArrayList(this.selectedUsers), getSelectedOption(), null, getBaseFragment(), new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PremiumPreviewGiftToUsersBottomSheet.this.lambda$init$2((Void) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PremiumPreviewGiftToUsersBottomSheet.this.lambda$init$3((TLRPC$TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$2(Void r3) {
        dismiss();
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.giftsToUserSent, new Object[0]);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PremiumPreviewGiftToUsersBottomSheet.this.lambda$init$1();
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$1() {
        PremiumPreviewGiftSentBottomSheet.show(this.selectedUsers);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$3(TLRPC$TL_error tLRPC$TL_error) {
        this.actionBtn.setLoading(false);
        BoostDialogs.showToastError(getContext(), tLRPC$TL_error);
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected void afterCellCreated(int i, View view) {
        if (i == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet.1
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view2, Outline outline) {
                        float m107dp = AndroidUtilities.m107dp(12);
                        outline.setRoundRect(0, 0, view2.getWidth(), (int) (view2.getHeight() + m107dp), m107dp);
                    }
                });
                view.setClipToOutline(true);
                view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider));
            }
            ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin = -AndroidUtilities.m107dp(6);
        }
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected void attachIconContainer(LinearLayout linearLayout) {
        linearLayout.addView(this.overrideTitleIcon, LayoutHelper.createLinear(-1, this.selectedUsers.size() == 1 ? 94 : 83, 0, this.selectedUsers.size() == 1 ? 28 : 34, 0, this.selectedUsers.size() == 1 ? 9 : 14));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet$AvatarHolderView */
    /* loaded from: classes6.dex */
    public static class AvatarHolderView extends FrameLayout {
        private final Paint bgPaint;
        public boolean drawCycle;
        AvatarDrawable fromAvatarDrawable;
        protected final AdditionalCounterView iconView;
        private final BackupImageView imageView;

        public static View createAvatarsContainer(Context context, List<TLRPC$User> list) {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setClipChildren(false);
            FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.setClipChildren(false);
            if (list.size() == 1) {
                frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 94, 0, 0, 0, 0, 0));
                AvatarHolderView avatarHolderView = new AvatarHolderView(context, 47.0f);
                avatarHolderView.drawCycle = false;
                avatarHolderView.setUser(list.get(0));
                frameLayout2.addView(avatarHolderView, 0, LayoutHelper.createFrame(94, 94, 17));
            } else {
                frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 83, 0, 0, 0, 0, 0));
                int i = 0;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    AvatarHolderView avatarHolderView2 = new AvatarHolderView(context, 41.5f);
                    avatarHolderView2.setUser(list.get(i2));
                    frameLayout2.addView(avatarHolderView2, 0, LayoutHelper.createFrame(83, 83, 17));
                    avatarHolderView2.setTranslationX((-i2) * AndroidUtilities.m107dp(29));
                    if (i2 == 0 && list.size() > 3) {
                        avatarHolderView2.iconView.setAlpha(1.0f);
                        avatarHolderView2.iconView.count = list.size() - 3;
                    }
                    i++;
                    if (i2 == 2) {
                        break;
                    }
                }
                frameLayout.setTranslationX(AndroidUtilities.m108dp(14.5f) * (i - 1));
            }
            return frameLayout;
        }

        public AvatarHolderView(Context context, float f) {
            super(context);
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            this.drawCycle = true;
            this.fromAvatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView = new BackupImageView(getContext());
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m108dp(f));
            AdditionalCounterView additionalCounterView = new AdditionalCounterView(context);
            this.iconView = additionalCounterView;
            additionalCounterView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            addView(backupImageView, LayoutHelper.createFrame(-1, -1, 0, 5, 5, 5, 5));
            addView(additionalCounterView, LayoutHelper.createFrame(26, 26, 85, 0, 0, 1, 3));
            if (Build.VERSION.SDK_INT >= 21) {
                paint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
            } else {
                paint.setColor(Theme.getColor(Theme.key_dialogBackground));
            }
        }

        public void setUser(TLRPC$User tLRPC$User) {
            this.fromAvatarDrawable.setInfo(tLRPC$User);
            this.imageView.setForUserOrChat(tLRPC$User, this.fromAvatarDrawable);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (this.drawCycle) {
                canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, (getMeasuredHeight() / 2.0f) - AndroidUtilities.m108dp(2.0f), this.bgPaint);
            }
            super.dispatchDraw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet$AdditionalCounterView */
    /* loaded from: classes6.dex */
    public static class AdditionalCounterView extends View {
        int count;
        TextPaint paint;

        public AdditionalCounterView(Context context) {
            super(context);
            TextPaint textPaint = new TextPaint(1);
            this.paint = textPaint;
            textPaint.setTextAlign(Paint.Align.CENTER);
            if (Build.VERSION.SDK_INT >= 21) {
                this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
            } else {
                this.paint.setColor(Theme.getColor(Theme.key_dialogBackground));
            }
            this.paint.setTextSize(AndroidUtilities.m108dp(11.5f));
            this.paint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float measuredWidth = getMeasuredWidth() / 2.0f;
            float measuredHeight = getMeasuredHeight() / 2.0f;
            canvas.drawCircle(measuredWidth, measuredHeight, getMeasuredWidth() / 2.0f, this.paint);
            PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), -AndroidUtilities.m107dp(10), BitmapDescriptorFactory.HUE_RED);
            canvas.drawCircle(measuredWidth, measuredHeight, (getMeasuredWidth() / 2.0f) - AndroidUtilities.m108dp(1.5f), PremiumGradient.getInstance().getMainGradientPaint());
            canvas.drawText("+" + this.count, measuredWidth, (int) (measuredHeight - ((this.paint.descent() + this.paint.ascent()) / 2.0f)), this.paint);
        }
    }
}
