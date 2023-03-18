package com.smedialink.p031ui.catalog.details;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.flexbox.FlexboxLayout;
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.p031ui.base.mvp.MvpBottomSheet;
import com.smedialink.p031ui.custom.BigActionButton;
import com.smedialink.p031ui.custom.ChannelTagView;
import com.smedialink.p031ui.smartpanel.extension.ImageViewExtKt;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.storage.domain.model.topics.TopicModel;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ContextExtKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkContentChannelDetailsBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.URLSpanNoUnderline;
import org.telegram.p048ui.QrActivity;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: ChannelDetailsBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog */
/* loaded from: classes3.dex */
public final class ChannelDetailsBottomSheetDialog extends MvpBottomSheet implements ChannelDetailsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ChannelDetailsBottomSheetDialog.class, "presenter", "getPresenter()Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(ChannelDetailsBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final ChatType chatType;
    private final BaseFragment fragment;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;

    /* compiled from: ChannelDetailsBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatType.values().length];
            try {
                iArr[ChatType.CHANNEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChatType.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ChannelDetailsBottomSheetDialog(com.smedialink.model.catalog.CampaignItem r3, org.telegram.tgnet.TLRPC$Chat r4, com.smedialink.storage.domain.model.catalog.ChatType r5, org.telegram.p048ui.ActionBar.BaseFragment r6) {
        /*
            r2 = this;
            java.lang.String r0 = "campaign"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "chat"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "chatType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.app.Activity r0 = r6.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r2.<init>(r0, r1)
            r2.chatType = r5
            r2.fragment = r6
            com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$presenter$2 r5 = new com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$presenter$2
            r5.<init>(r2, r3, r4)
            moxy.ktx.MoxyKtxDelegate r3 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r4 = r2.getMvpDelegate()
            java.lang.String r6 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r6)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.Class<com.smedialink.ui.catalog.details.ChannelDetailsPresenter> r0 = com.smedialink.p031ui.catalog.details.ChannelDetailsPresenter.class
            java.lang.String r0 = r0.getName()
            r6.append(r0)
            java.lang.String r0 = "."
            r6.append(r0)
            java.lang.String r0 = "presenter"
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            r3.<init>(r4, r6, r5)
            r2.presenter$delegate = r3
            org.koin.mp.KoinPlatformTools r3 = org.koin.p047mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r3 = r3.defaultLazyMode()
            com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$special$$inlined$inject$default$1 r4 = new com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$special$$inlined$inject$default$1
            r5 = 0
            r4.<init>(r2, r5, r5)
            kotlin.Lazy r3 = kotlin.LazyKt.lazy(r3, r4)
            r2.resourceManager$delegate = r3
            com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$binding$2 r3 = new com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$binding$2
            r3.<init>(r2)
            com.smedialink.utils.extentions.delegate.ResettableLazy r3 = com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r2, r5, r3, r1, r5)
            r2.binding$delegate = r3
            r3 = 0
            r2.setApplyBottomPadding(r3)
            r2.setCanceledOnTouchOutside(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.catalog.details.ChannelDetailsBottomSheetDialog.<init>(com.smedialink.model.catalog.CampaignItem, org.telegram.tgnet.TLRPC$Chat, com.smedialink.storage.domain.model.catalog.ChatType, org.telegram.ui.ActionBar.BaseFragment):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ChannelDetailsPresenter getPresenter() {
        return (ChannelDetailsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentChannelDetailsBinding getBinding() {
        return (ForkContentChannelDetailsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupViews();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.catalog.details.ChannelDetailsView
    public void setupCampaignInfo(CampaignItem campaignItem) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(campaignItem, "campaignItem");
        ForkContentChannelDetailsBinding binding = getBinding();
        AppCompatImageView imageAvatar = binding.imageAvatar;
        Intrinsics.checkNotNullExpressionValue(imageAvatar, "imageAvatar");
        String photo = campaignItem.getPhoto();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        ImageViewExtKt.loadFromWithPlaceholderResId(imageAvatar, photo, context, Integer.valueOf(C3286R.C3288drawable.photo_placeholder_in), true);
        AppCompatImageView imageVerified = binding.imageVerified;
        Intrinsics.checkNotNullExpressionValue(imageVerified, "imageVerified");
        imageVerified.setVisibility(campaignItem.isVerified() ? 0 : 8);
        binding.textName.setText(campaignItem.getTitle());
        String str = '@' + campaignItem.getShortname();
        AppCompatTextView appCompatTextView = binding.textNickname;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new URLSpanNoUnderline(str, true), 0, str.length(), 33);
        appCompatTextView.setText(spannableStringBuilder);
        AppCompatTextView setupCampaignInfo$lambda$6$lambda$5$lambda$2 = binding.textDescription;
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(campaignItem.getDescription());
        MessageObject.addLinks(false, spannableStringBuilder2, false, false);
        setupCampaignInfo$lambda$6$lambda$5$lambda$2.setText(spannableStringBuilder2);
        Intrinsics.checkNotNullExpressionValue(setupCampaignInfo$lambda$6$lambda$5$lambda$2, "setupCampaignInfo$lambda$6$lambda$5$lambda$2");
        isBlank = StringsKt__StringsJVMKt.isBlank(campaignItem.getDescription());
        setupCampaignInfo$lambda$6$lambda$5$lambda$2.setVisibility(isBlank ^ true ? 0 : 8);
        binding.topic.setTopic(TopicModel.Companion.createMockupWithTitle(campaignItem.getCategory()), false);
        binding.textLanguageValue.setText(campaignItem.getLanguage());
        binding.textSubscribersCount.setText(String.valueOf(campaignItem.getMembersCount()));
        for (String str2 : campaignItem.getTags()) {
            FlexboxLayout flexboxLayout = binding.flexboxTags;
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            ChannelTagView channelTagView = new ChannelTagView(context2, null, 0, 6, null);
            channelTagView.setText(str2);
            flexboxLayout.addView(channelTagView, LayoutHelper.createLinear(-2, -2, 6, 0, 0, 6));
        }
        ConstraintLayout constraintTags = binding.constraintTags;
        Intrinsics.checkNotNullExpressionValue(constraintTags, "constraintTags");
        constraintTags.setVisibility(campaignItem.getTags().isEmpty() ^ true ? 0 : 8);
    }

    @Override // com.smedialink.p031ui.catalog.details.ChannelDetailsView
    public void setupSubscribeButton(boolean z) {
        String string;
        BigActionButton bigActionButton = getBinding().buttonSubscribe;
        int i = WhenMappings.$EnumSwitchMapping$0[this.chatType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            if (z) {
                string = LocaleController.getString("JoinGroup", C3286R.string.JoinGroup);
            } else {
                string = LocaleController.getString("LeaveMegaMenu", C3286R.string.LeaveMegaMenu);
            }
        } else if (z) {
            string = LocaleController.getString("ChannelJoin", C3286R.string.ChannelJoin);
        } else {
            string = LocaleController.getString("LeaveChannel", C3286R.string.LeaveChannel);
        }
        bigActionButton.setText(string);
    }

    @Override // com.smedialink.p031ui.catalog.details.ChannelDetailsView
    public void showShareDialog(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        Activity parentActivity = this.fragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "fragment.parentActivity");
        ContextExtKt.share(parentActivity, text);
    }

    @Override // com.smedialink.p031ui.catalog.details.ChannelDetailsView
    public void showChannelQr(long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", j);
        this.fragment.presentFragment(new QrActivity(bundle));
    }

    @Override // com.smedialink.p031ui.catalog.details.ChannelDetailsView
    public void onSubscribedToChannel(Uri channelUri) {
        Intrinsics.checkNotNullParameter(channelUri, "channelUri");
        Browser.openUrl(this.fragment.getParentActivity(), channelUri);
    }

    private final void setupColors() {
        ForkContentChannelDetailsBinding binding = getBinding();
        binding.buttonSubscribe.applyColors();
        ActionBarMenuItem setupColors$lambda$13$lambda$8 = binding.buttonMore;
        setupColors$lambda$13$lambda$8.setIconColor(getThemedColor("windowBackgroundWhiteGrayIcon"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$13$lambda$8, "setupColors$lambda$13$lambda$8");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$13$lambda$8);
        AppCompatTextView setupColors$lambda$13$lambda$9 = binding.textName;
        setupColors$lambda$13$lambda$9.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$13$lambda$9, "setupColors$lambda$13$lambda$9");
        ViewExtKt.withMediumTypeface(setupColors$lambda$13$lambda$9);
        AppCompatTextView appCompatTextView = binding.textNickname;
        appCompatTextView.setLinkTextColor(getThemedColor("chats_actionBackground"));
        appCompatTextView.setTextColor(getThemedColor("chats_actionBackground"));
        AppCompatTextView setupColors$lambda$13$lambda$11 = binding.textSubscribersCount;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$13$lambda$11, "setupColors$lambda$13$lambda$11");
        ViewExtKt.setCompoundDrawablesColor(setupColors$lambda$13$lambda$11, getThemedColor("windowBackgroundWhiteGrayText"));
        setupColors$lambda$13$lambda$11.setTextColor(getThemedColor("windowBackgroundWhiteGrayText"));
        AppCompatTextView appCompatTextView2 = binding.textDescription;
        appCompatTextView2.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
        appCompatTextView2.setLinkTextColor(getThemedColor("chats_actionBackground"));
        binding.textLanguageValue.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
        AppCompatTextView textLanguageTitle = binding.textLanguageTitle;
        Intrinsics.checkNotNullExpressionValue(textLanguageTitle, "textLanguageTitle");
        AppCompatTextView textTags = binding.textTags;
        Intrinsics.checkNotNullExpressionValue(textTags, "textTags");
        ViewExtKt.setTextsColor("windowBackgroundWhiteGrayText", textLanguageTitle, textTags);
        binding.imageLanguage.setColorFilter(new PorterDuffColorFilter(getThemedColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.SRC_IN));
        binding.imageTags.setColorFilter(new PorterDuffColorFilter(getThemedColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.SRC_IN));
    }

    private final void setupViews() {
        ForkContentChannelDetailsBinding binding = getBinding();
        binding.textNickname.setMovementMethod(LinkMovementMethod.getInstance());
        AppCompatTextView appCompatTextView = binding.textDescription;
        appCompatTextView.setMovementMethod(LinkMovementMethod.getInstance());
        appCompatTextView.setOnTouchListener(ChannelDetailsBottomSheetDialog$$ExternalSyntheticLambda1.INSTANCE);
        binding.textLanguageTitle.setText(getResourceManager().getString(C3286R.string.catalog_channel_details_language));
        binding.textTags.setText(getResourceManager().getString(C3286R.string.catalog_channel_details_tags));
        setupButtonMore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupViews$lambda$16$lambda$15$lambda$14(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
        }
        if (motionEvent.getAction() == 1) {
            view.getParent().requestDisallowInterceptTouchEvent(false);
        }
        return false;
    }

    private final void setupButtonMore() {
        final ActionBarMenuItem setupButtonMore$lambda$18 = getBinding().buttonMore;
        setupButtonMore$lambda$18.setLongClickEnabled(false);
        setupButtonMore$lambda$18.setSubMenuOpenSide(2);
        setupButtonMore$lambda$18.setIcon(C3286R.C3288drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(setupButtonMore$lambda$18, "setupButtonMore$lambda$18");
        ViewExtKt.setCircleRippleBackground(setupButtonMore$lambda$18);
        setupButtonMore$lambda$18.addSubItem(IdFabric$Menu.SHARE, C3286R.C3288drawable.share, LocaleController.getString("ShareLink", C3286R.string.ShareLink));
        setupButtonMore$lambda$18.addSubItem(IdFabric$Menu.COPY, C3286R.C3288drawable.msg_link2, LocaleController.getString("CopyLink", C3286R.string.CopyLink));
        setupButtonMore$lambda$18.addSubItem(IdFabric$Menu.f257QR, C3286R.C3288drawable.msg_qrcode, LocaleController.getString("GetQRCode", C3286R.string.GetQRCode));
        setupButtonMore$lambda$18.redrawPopup(getThemedColor("actionBarDefaultSubmenuBackground"));
        setupButtonMore$lambda$18.setPopupItemsColor(getThemedColor("actionBarDefaultSubmenuItem"), false);
        setupButtonMore$lambda$18.setPopupItemsColor(getThemedColor("actionBarDefaultSubmenuItemIcon"), true);
        setupButtonMore$lambda$18.setupPopupRadialSelectors(getThemedColor("listSelectorSDK21"));
        setupButtonMore$lambda$18.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelDetailsBottomSheetDialog.setupButtonMore$lambda$18$lambda$17(ActionBarMenuItem.this, view);
            }
        });
        setupButtonMore$lambda$18.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3286R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupButtonMore$lambda$18$lambda$17(ActionBarMenuItem this_with, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.toggleSubMenu();
    }

    private final void onSubItemClick(int i) {
        if (i == IdFabric$Menu.SHARE) {
            getPresenter().shareChannelLink();
        } else if (i == IdFabric$Menu.COPY) {
            getPresenter().copyChannelLink();
        } else if (i == IdFabric$Menu.f257QR) {
            getPresenter().createChannelQr();
        }
    }

    private final void setupListeners() {
        ForkContentChannelDetailsBinding binding = getBinding();
        BigActionButton buttonSubscribe = binding.buttonSubscribe;
        Intrinsics.checkNotNullExpressionValue(buttonSubscribe, "buttonSubscribe");
        ViewExtKt.safeThrottledClick$default(buttonSubscribe, 0L, new ChannelDetailsBottomSheetDialog$setupListeners$1$1(this), 1, null);
        binding.buttonMore.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                ChannelDetailsBottomSheetDialog.setupListeners$lambda$20$lambda$19(ChannelDetailsBottomSheetDialog.this, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$20$lambda$19(ChannelDetailsBottomSheetDialog this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSubItemClick(i);
    }

    /* compiled from: ChannelDetailsBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ChannelDetailsBottomSheetDialog newInstance(CampaignItem campaign, TLRPC$Chat chat, ChatType chatType, BaseFragment fragment) {
            Intrinsics.checkNotNullParameter(campaign, "campaign");
            Intrinsics.checkNotNullParameter(chat, "chat");
            Intrinsics.checkNotNullParameter(chatType, "chatType");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            return new ChannelDetailsBottomSheetDialog(campaign, chat, chatType, fragment);
        }
    }
}
