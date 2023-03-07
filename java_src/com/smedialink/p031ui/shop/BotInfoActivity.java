package com.smedialink.p031ui.shop;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.bots.data.model.BotStatus;
import com.smedialink.bots.domain.model.BotLanguage;
import com.smedialink.bots.domain.model.ShopItem;
import com.smedialink.bots.domain.model.SmartTag;
import com.smedialink.bots.usecase.AiBotsManager;
import com.smedialink.p031ui.shop.util.ContextExtKt;
import com.smedialink.p031ui.smartpanel.extension.ImageViewExtKt;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import me.zhanghai.android.materialratingbar.MaterialRatingBar;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.SizeNotifierFrameLayout;
/* compiled from: BotInfoActivity.kt */
/* renamed from: com.smedialink.ui.shop.BotInfoActivity */
/* loaded from: classes3.dex */
public final class BotInfoActivity extends BaseFragment {
    private ImageView avatar;
    private ShopItem botAnalog;
    private TextView botAnalogLanguage;
    private TextView botCurrentLanguage;
    private TextView botDescription;
    private String botId;
    private TextView botName;
    private TextView button;
    private TextView dateAdded;
    private TextView dateUpdated;
    private TextView developerLabel;
    private final CompositeDisposable disposable;
    private TextView installsValue;
    private TextView instalsLabel;
    private ConstraintLayout layoutContainer;
    private TextView phrasesLabel;
    private TextView phrasesValue;
    private ProgressBar progressBar;
    private TextView rateLabel;
    private MaterialRatingBar ratingBar;
    private TextView ratingLabel;
    private TextView ratingValue;
    private SizeNotifierFrameLayout rootContainer;
    private View statsContainer;
    private FlexboxLayout tagsContainer;
    private TextView themesLabel;
    private TextView themesValue;
    private String title;
    private final long userId;

    /* compiled from: BotInfoActivity.kt */
    /* renamed from: com.smedialink.ui.shop.BotInfoActivity$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[BotLanguage.values().length];
            iArr[BotLanguage.RU.ordinal()] = 1;
            iArr[BotLanguage.EN.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BotStatus.values().length];
            iArr2[BotStatus.PAID.ordinal()] = 1;
            iArr2[BotStatus.AVAILABLE.ordinal()] = 2;
            iArr2[BotStatus.UPDATE_AVAILABLE.ordinal()] = 3;
            iArr2[BotStatus.DOWNLOADING.ordinal()] = 4;
            iArr2[BotStatus.ENABLED.ordinal()] = 5;
            iArr2[BotStatus.DISABLED.ordinal()] = 6;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public BotInfoActivity(Bundle bundle) {
        super(bundle);
        this.botId = "";
        this.title = "";
        this.userId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        this.disposable = new CompositeDisposable();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        if (getArguments() != null) {
            String string = getArguments().getString("botId");
            if (string == null) {
                string = "";
            }
            this.botId = string;
            String string2 = getArguments().getString("title");
            this.title = string2 != null ? string2 : "";
            return true;
        }
        return true;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        this.disposable.clear();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        if (intent != null) {
            ApplicationLoader.purchaseHelper.onActivityResult(i, i2, intent);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.rootContainer = new SizeNotifierFrameLayout(context);
        LayoutInflater from = LayoutInflater.from(context);
        int i = C3158R.layout.fork_bots_description_content;
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.rootContainer;
        SizeNotifierFrameLayout fragmentView = null;
        if (sizeNotifierFrameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
            sizeNotifierFrameLayout = null;
        }
        initViewIds(from.inflate(i, (ViewGroup) sizeNotifierFrameLayout, true));
        this.actionBar.createMenu();
        this.actionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
        this.actionBar.setTitle(this.title);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.shop.BotInfoActivity$createView$1
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    BotInfoActivity.this.finishFragment();
                }
            }
        });
        View view = this.statsContainer;
        if (view != null) {
            view.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        }
        showProgress(true);
        subscribeToBotContent();
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.rootContainer;
        if (sizeNotifierFrameLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
        } else {
            fragmentView = sizeNotifierFrameLayout2;
        }
        this.fragmentView = fragmentView;
        Intrinsics.checkNotNullExpressionValue(fragmentView, "fragmentView");
        return fragmentView;
    }

    private final void initViewIds(View view) {
        this.avatar = view == null ? null : (ImageView) view.findViewById(C3158R.C3161id.bot_avatar);
        this.botName = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.bot_name);
        this.botDescription = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.bot_description);
        this.tagsContainer = view == null ? null : (FlexboxLayout) view.findViewById(C3158R.C3161id.tags_container);
        this.ratingValue = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.rating_number);
        this.ratingLabel = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.rating_label);
        this.instalsLabel = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.installs_label);
        this.themesLabel = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.themes_label);
        this.developerLabel = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.bot_developer);
        this.botCurrentLanguage = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.bot_current_language);
        this.botAnalogLanguage = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.bot_analog_language);
        this.phrasesLabel = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.phrases_label);
        this.installsValue = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.installs_counter);
        this.themesValue = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.themes_counter);
        this.phrasesValue = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.phrases_counter);
        this.dateAdded = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.bot_date_added);
        this.dateUpdated = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.bot_date_updated);
        this.ratingBar = view == null ? null : (MaterialRatingBar) view.findViewById(C3158R.C3161id.rating);
        this.button = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.bot_info_button);
        this.rateLabel = view == null ? null : (TextView) view.findViewById(C3158R.C3161id.textRateBot);
        this.layoutContainer = view == null ? null : (ConstraintLayout) view.findViewById(C3158R.C3161id.layoutContainer);
        this.progressBar = view == null ? null : (ProgressBar) view.findViewById(C3158R.C3161id.progressBar);
        this.statsContainer = view != null ? view.findViewById(C3158R.C3161id.stats_container) : null;
    }

    private final void showProgress(boolean z) {
        int i = !z ? 0 : 8;
        ConstraintLayout constraintLayout = this.layoutContainer;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(i);
        }
        TextView textView = this.button;
        if (textView != null) {
            textView.setVisibility(i);
        }
        ProgressBar progressBar = this.progressBar;
        if (progressBar == null) {
            return;
        }
        progressBar.setVisibility(z ? 0 : 8);
    }

    private final void subscribeToBotContent() {
        AiBotsManager aiBotsManager = ApplicationLoader.smartBotsManager;
        String str = this.botId;
        String langCode = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode, "getInstance().currentLocaleInfo.langCode");
        this.disposable.add(aiBotsManager.getSingleBotObservable(str, langCode).subscribeOn(Schedulers.m694io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.smedialink.ui.shop.BotInfoActivity$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BotInfoActivity.m1484subscribeToBotContent$lambda0(BotInfoActivity.this, (ShopItem) obj);
            }
        }, BotInfoActivity$$ExternalSyntheticLambda4.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subscribeToBotContent$lambda-0  reason: not valid java name */
    public static final void m1484subscribeToBotContent$lambda0(BotInfoActivity this$0, ShopItem item) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(item, "item");
        this$0.displayBotItem(item);
    }

    private final void displayBotItem(final ShopItem shopItem) {
        String internalString;
        String price;
        showProgress(false);
        observeBotAnalog(shopItem);
        TextView textView = this.button;
        if (textView != null) {
            textView.setBackgroundColor(Theme.getColor("chats_actionBackground"));
        }
        ImageView imageView = this.avatar;
        if (imageView != null) {
            String avatar = shopItem.getAvatar();
            Activity parentActivity = getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            ImageViewExtKt.loadFrom$default(imageView, avatar, parentActivity, null, false, 12, null);
        }
        TextView textView2 = this.botName;
        if (textView2 != null) {
            textView2.setText(shopItem.getTitle());
        }
        TextView textView3 = this.botName;
        if (textView3 != null) {
            textView3.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        }
        TextView textView4 = this.botDescription;
        if (textView4 != null) {
            textView4.setText(shopItem.getDescription());
        }
        TextView textView5 = this.ratingValue;
        if (textView5 != null) {
            String format = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(shopItem.getRating())}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
            textView5.setText(format);
        }
        TextView textView6 = this.ratingLabel;
        if (textView6 != null) {
            textView6.setText(LocaleController.formatPluralStringInternal(C3158R.string.plural_info_votes, (int) shopItem.getReviews()));
        }
        TextView textView7 = this.themesLabel;
        if (textView7 != null) {
            textView7.setText(LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_themes));
        }
        TextView textView8 = this.phrasesLabel;
        if (textView8 != null) {
            textView8.setText(LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_phrases));
        }
        TextView textView9 = this.developerLabel;
        if (textView9 != null) {
            textView9.setText(LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_developer));
        }
        TextView textView10 = this.instalsLabel;
        if (textView10 != null) {
            textView10.setText(LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_installs));
        }
        TextView textView11 = this.themesValue;
        if (textView11 != null) {
            textView11.setText(String.valueOf(shopItem.getThemes()));
        }
        TextView textView12 = this.phrasesValue;
        if (textView12 != null) {
            textView12.setText(String.valueOf(shopItem.getPhrases()));
        }
        TextView textView13 = this.installsValue;
        if (textView13 != null) {
            textView13.setText(String.valueOf(shopItem.getInstalls()));
        }
        TextView textView14 = this.rateLabel;
        if (textView14 != null) {
            textView14.setText(LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_rate));
        }
        int i = WhenMappings.$EnumSwitchMapping$0[shopItem.getLanguage().ordinal()];
        if (i == 1) {
            internalString = LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_supported_language_ru);
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            internalString = LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_supported_language_en);
        }
        TextView textView15 = this.botCurrentLanguage;
        if (textView15 != null) {
            textView15.setText(((Object) LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_supported_languages)) + ": \n" + ((Object) internalString));
        }
        TextView textView16 = this.botAnalogLanguage;
        if (textView16 != null) {
            textView16.setTextColor(Theme.getColor("chats_actionBackground"));
        }
        TextView textView17 = this.botAnalogLanguage;
        if (textView17 != null) {
            textView17.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.shop.BotInfoActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BotInfoActivity.m1479displayBotItem$lambda4(BotInfoActivity.this, view);
                }
            });
        }
        if (shopItem.getOwnRating() == 0) {
            MaterialRatingBar materialRatingBar = this.ratingBar;
            if (materialRatingBar != null) {
                materialRatingBar.setIsIndicator(false);
            }
            MaterialRatingBar materialRatingBar2 = this.ratingBar;
            if (materialRatingBar2 != null) {
                materialRatingBar2.setRating(BitmapDescriptorFactory.HUE_RED);
            }
            MaterialRatingBar materialRatingBar3 = this.ratingBar;
            if (materialRatingBar3 != null) {
                materialRatingBar3.setOnRatingChangeListener(new MaterialRatingBar.OnRatingChangeListener() { // from class: com.smedialink.ui.shop.BotInfoActivity$$ExternalSyntheticLambda6
                    @Override // me.zhanghai.android.materialratingbar.MaterialRatingBar.OnRatingChangeListener
                    public final void onRatingChanged(MaterialRatingBar materialRatingBar4, float f) {
                        BotInfoActivity.m1480displayBotItem$lambda5(BotInfoActivity.this, materialRatingBar4, f);
                    }
                });
            }
        } else {
            MaterialRatingBar materialRatingBar4 = this.ratingBar;
            if (materialRatingBar4 != null) {
                materialRatingBar4.setIsIndicator(true);
            }
            MaterialRatingBar materialRatingBar5 = this.ratingBar;
            if (materialRatingBar5 != null) {
                materialRatingBar5.setRating(shopItem.getOwnRating());
            }
        }
        FlexboxLayout flexboxLayout = this.tagsContainer;
        if (flexboxLayout != null) {
            flexboxLayout.removeAllViews();
        }
        Activity parentActivity2 = getParentActivity();
        if (parentActivity2 != null) {
            TextView textView18 = this.dateAdded;
            if (textView18 != null) {
                textView18.setText(((Object) LocaleController.getInternalString(C3158R.string.neurobots_store_bot_added)) + ' ' + shopItem.getCreated());
            }
            TextView textView19 = this.dateUpdated;
            if (textView19 != null) {
                textView19.setText(((Object) LocaleController.getInternalString(C3158R.string.neurobots_store_bot_updated)) + ' ' + shopItem.getUpdated());
            }
            int pxToDp = ContextExtKt.pxToDp(parentActivity2, 16);
            List<SmartTag> tags = shopItem.getTags();
            ArrayList<SmartTag> arrayList = new ArrayList();
            for (Object obj : tags) {
                if (!((SmartTag) obj).getHidden()) {
                    arrayList.add(obj);
                }
            }
            for (SmartTag smartTag : arrayList) {
                TextView textView20 = new TextView(parentActivity2);
                textView20.setText(smartTag.getTitle());
                textView20.setTextColor(-1);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(Theme.getColor("chats_actionBackground"));
                gradientDrawable.setCornerRadius(AndroidUtilities.m51dp(50.0f));
                textView20.setPadding(AndroidUtilities.m51dp(8.0f), AndroidUtilities.m51dp(4.0f), AndroidUtilities.m51dp(8.0f), AndroidUtilities.m51dp(4.0f));
                textView20.setBackground(gradientDrawable);
                FlexboxLayout flexboxLayout2 = this.tagsContainer;
                if (flexboxLayout2 != null) {
                    flexboxLayout2.addView(textView20);
                }
                ViewGroup.LayoutParams layoutParams = textView20.getLayoutParams();
                Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
                FlexboxLayout.LayoutParams layoutParams2 = (FlexboxLayout.LayoutParams) layoutParams;
                layoutParams2.setMargins(pxToDp, pxToDp, pxToDp, pxToDp);
                textView20.setLayoutParams(layoutParams2);
            }
            TextView textView21 = this.button;
            if (textView21 != null) {
                switch (WhenMappings.$EnumSwitchMapping$1[shopItem.getStatus().ordinal()]) {
                    case 1:
                        price = shopItem.getPrice();
                        if (price == null) {
                            price = "Free";
                            break;
                        }
                        break;
                    case 2:
                        price = LocaleController.getInternalString(C3158R.string.neurobots_store_bot_action_download);
                        break;
                    case 3:
                        price = LocaleController.getInternalString(C3158R.string.neurobots_store_bot_action_update);
                        break;
                    case 4:
                        price = LocaleController.getInternalString(C3158R.string.neurobots_store_bot_status_downloading);
                        break;
                    case 5:
                        price = LocaleController.getInternalString(C3158R.string.neurobots_store_bot_action_disable);
                        break;
                    case 6:
                        price = LocaleController.getInternalString(C3158R.string.neurobots_store_bot_action_enable);
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                textView21.setText(price);
            }
        }
        TextView textView22 = this.button;
        if (textView22 == null) {
            return;
        }
        textView22.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.shop.BotInfoActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BotInfoActivity.m1481displayBotItem$lambda9(BotInfoActivity.this, shopItem, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: displayBotItem$lambda-4  reason: not valid java name */
    public static final void m1479displayBotItem$lambda4(BotInfoActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ShopItem shopItem = this$0.botAnalog;
        if (shopItem == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("botId", shopItem.getBotId());
        bundle.putString("title", shopItem.getTitle());
        this$0.presentFragment(new BotInfoActivity(bundle), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: displayBotItem$lambda-5  reason: not valid java name */
    public static final void m1480displayBotItem$lambda5(BotInfoActivity this$0, MaterialRatingBar materialRatingBar, float f) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        materialRatingBar.setRating(f);
        materialRatingBar.setIsIndicator(true);
        ApplicationLoader.smartBotsManager.sendBotRatingEvent(this$0.botId, this$0.userId, (int) f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: displayBotItem$lambda-9  reason: not valid java name */
    public static final void m1481displayBotItem$lambda9(BotInfoActivity this$0, ShopItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        NotificationCenter.getInstance(this$0.currentAccount).postNotificationName(NotificationCenter.botButtonClicked, item);
    }

    private final void observeBotAnalog(final ShopItem shopItem) {
        AiBotsManager aiBotsManager = ApplicationLoader.smartBotsManager;
        String langCode = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode, "getInstance().currentLocaleInfo.langCode");
        this.disposable.add(aiBotsManager.getAllBotsObservable(langCode).subscribeOn(Schedulers.m694io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.smedialink.ui.shop.BotInfoActivity$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BotInfoActivity.m1482observeBotAnalog$lambda12(BotInfoActivity.this, shopItem, (List) obj);
            }
        }, BotInfoActivity$$ExternalSyntheticLambda5.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: observeBotAnalog$lambda-12  reason: not valid java name */
    public static final void m1482observeBotAnalog$lambda12(BotInfoActivity this$0, ShopItem currentBot, List items) {
        Object obj;
        TextView textView;
        String internalString;
        boolean areEqual;
        String replace$default;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(currentBot, "$currentBot");
        Intrinsics.checkNotNullExpressionValue(items, "items");
        ListIterator listIterator = items.listIterator(items.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            }
            obj = listIterator.previous();
            ShopItem shopItem = (ShopItem) obj;
            int i = WhenMappings.$EnumSwitchMapping$0[currentBot.getLanguage().ordinal()];
            if (i == 1) {
                areEqual = Intrinsics.areEqual(shopItem.getBotId(), Intrinsics.stringPlus(currentBot.getBotId(), "_eng"));
                continue;
            } else if (i != 2) {
                throw new NoWhenBranchMatchedException();
            } else {
                String botId = shopItem.getBotId();
                replace$default = StringsKt__StringsJVMKt.replace$default(currentBot.getBotId(), "_eng", "", false, 4, (Object) null);
                areEqual = Intrinsics.areEqual(botId, replace$default);
                continue;
            }
            if (areEqual) {
                break;
            }
        }
        ShopItem shopItem2 = (ShopItem) obj;
        this$0.botAnalog = shopItem2;
        if (shopItem2 == null || (textView = this$0.botAnalogLanguage) == null) {
            return;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$0[shopItem2.getLanguage().ordinal()];
        if (i2 == 1) {
            internalString = LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_supported_language_ru);
        } else if (i2 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            internalString = LocaleController.getInternalString(C3158R.string.neurobots_store_bot_info_supported_language_en);
        }
        textView.setText(internalString);
    }
}
