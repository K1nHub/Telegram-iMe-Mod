package com.iMe.p032ui.shop;

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
import com.iMe.bots.data.model.BotStatus;
import com.iMe.bots.domain.model.BotLanguage;
import com.iMe.bots.domain.model.ShopItem;
import com.iMe.bots.domain.model.SmartTag;
import com.iMe.bots.usecase.AiBotsManager;
import com.iMe.p032ui.shop.util.ContextExtKt;
import com.iMe.p032ui.smartpanel.extension.ImageViewExtKt;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import me.zhanghai.android.materialratingbar.MaterialRatingBar;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.SizeNotifierFrameLayout;
/* compiled from: BotInfoActivity.kt */
/* renamed from: com.iMe.ui.shop.BotInfoActivity */
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
    /* renamed from: com.iMe.ui.shop.BotInfoActivity$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[BotLanguage.values().length];
            try {
                iArr[BotLanguage.RU.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BotLanguage.EN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BotStatus.values().length];
            try {
                iArr2[BotStatus.PAID.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[BotStatus.AVAILABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[BotStatus.UPDATE_AVAILABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[BotStatus.DOWNLOADING.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[BotStatus.ENABLED.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[BotStatus.DISABLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
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
        int i = C3316R.layout.fork_bots_description_content;
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.rootContainer;
        SizeNotifierFrameLayout fragmentView = null;
        if (sizeNotifierFrameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
            sizeNotifierFrameLayout = null;
        }
        initViewIds(from.inflate(i, (ViewGroup) sizeNotifierFrameLayout, true));
        this.actionBar.createMenu();
        this.actionBar.setBackButtonImage(C3316R.C3318drawable.ic_ab_back);
        this.actionBar.setTitle(this.title);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3381ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.shop.BotInfoActivity$createView$1
            @Override // org.telegram.p048ui.ActionBar.C3381ActionBar.ActionBarMenuOnItemClick
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
        this.avatar = view != null ? (ImageView) view.findViewById(C3316R.C3319id.bot_avatar) : null;
        this.botName = view != null ? (TextView) view.findViewById(C3316R.C3319id.bot_name) : null;
        this.botDescription = view != null ? (TextView) view.findViewById(C3316R.C3319id.bot_description) : null;
        this.tagsContainer = view != null ? (FlexboxLayout) view.findViewById(C3316R.C3319id.tags_container) : null;
        this.ratingValue = view != null ? (TextView) view.findViewById(C3316R.C3319id.rating_number) : null;
        this.ratingLabel = view != null ? (TextView) view.findViewById(C3316R.C3319id.rating_label) : null;
        this.instalsLabel = view != null ? (TextView) view.findViewById(C3316R.C3319id.installs_label) : null;
        this.themesLabel = view != null ? (TextView) view.findViewById(C3316R.C3319id.themes_label) : null;
        this.developerLabel = view != null ? (TextView) view.findViewById(C3316R.C3319id.bot_developer) : null;
        this.botCurrentLanguage = view != null ? (TextView) view.findViewById(C3316R.C3319id.bot_current_language) : null;
        this.botAnalogLanguage = view != null ? (TextView) view.findViewById(C3316R.C3319id.bot_analog_language) : null;
        this.phrasesLabel = view != null ? (TextView) view.findViewById(C3316R.C3319id.phrases_label) : null;
        this.installsValue = view != null ? (TextView) view.findViewById(C3316R.C3319id.installs_counter) : null;
        this.themesValue = view != null ? (TextView) view.findViewById(C3316R.C3319id.themes_counter) : null;
        this.phrasesValue = view != null ? (TextView) view.findViewById(C3316R.C3319id.phrases_counter) : null;
        this.dateAdded = view != null ? (TextView) view.findViewById(C3316R.C3319id.bot_date_added) : null;
        this.dateUpdated = view != null ? (TextView) view.findViewById(C3316R.C3319id.bot_date_updated) : null;
        this.ratingBar = view != null ? (MaterialRatingBar) view.findViewById(C3316R.C3319id.rating) : null;
        this.button = view != null ? (TextView) view.findViewById(C3316R.C3319id.bot_info_button) : null;
        this.rateLabel = view != null ? (TextView) view.findViewById(C3316R.C3319id.textRateBot) : null;
        this.layoutContainer = view != null ? (ConstraintLayout) view.findViewById(C3316R.C3319id.layoutContainer) : null;
        this.progressBar = view != null ? (ProgressBar) view.findViewById(C3316R.C3319id.progressBar) : null;
        this.statsContainer = view != null ? view.findViewById(C3316R.C3319id.stats_container) : null;
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
        Observable<ShopItem> observeOn = aiBotsManager.getSingleBotObservable(str, langCode).subscribeOn(Schedulers.m688io()).observeOn(AndroidSchedulers.mainThread());
        final BotInfoActivity$subscribeToBotContent$1 botInfoActivity$subscribeToBotContent$1 = new BotInfoActivity$subscribeToBotContent$1(this);
        Consumer<? super ShopItem> consumer = new Consumer() { // from class: com.iMe.ui.shop.BotInfoActivity$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BotInfoActivity.subscribeToBotContent$lambda$0(Function1.this, obj);
            }
        };
        final BotInfoActivity$subscribeToBotContent$2 botInfoActivity$subscribeToBotContent$2 = BotInfoActivity$subscribeToBotContent$2.INSTANCE;
        this.disposable.add(observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.ui.shop.BotInfoActivity$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BotInfoActivity.subscribeToBotContent$lambda$1(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToBotContent$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToBotContent$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void displayBotItem(final ShopItem shopItem) {
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
            textView6.setText(LocaleController.formatPluralStringInternal(C3316R.string.plural_info_votes, (int) shopItem.getReviews()));
        }
        TextView textView7 = this.themesLabel;
        if (textView7 != null) {
            textView7.setText(LocaleController.getInternalString(C3316R.string.neurobots_store_bot_info_themes));
        }
        TextView textView8 = this.phrasesLabel;
        if (textView8 != null) {
            textView8.setText(LocaleController.getInternalString(C3316R.string.neurobots_store_bot_info_phrases));
        }
        TextView textView9 = this.developerLabel;
        if (textView9 != null) {
            textView9.setText(LocaleController.getInternalString(C3316R.string.neurobots_store_bot_info_developer));
        }
        TextView textView10 = this.instalsLabel;
        if (textView10 != null) {
            textView10.setText(LocaleController.getInternalString(C3316R.string.neurobots_store_bot_info_installs));
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
            textView14.setText(LocaleController.getInternalString(C3316R.string.neurobots_store_bot_info_rate));
        }
        int i = WhenMappings.$EnumSwitchMapping$0[shopItem.getLanguage().ordinal()];
        if (i == 1) {
            internalString = LocaleController.getInternalString(C3316R.string.neurobots_store_bot_info_supported_language_ru);
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            internalString = LocaleController.getInternalString(C3316R.string.neurobots_store_bot_info_supported_language_en);
        }
        TextView textView15 = this.botCurrentLanguage;
        if (textView15 != null) {
            textView15.setText(LocaleController.getInternalString(C3316R.string.neurobots_store_bot_info_supported_languages) + ": \n" + internalString);
        }
        TextView textView16 = this.botAnalogLanguage;
        if (textView16 != null) {
            textView16.setTextColor(Theme.getColor("chats_actionBackground"));
        }
        TextView textView17 = this.botAnalogLanguage;
        if (textView17 != null) {
            textView17.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.shop.BotInfoActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BotInfoActivity.displayBotItem$lambda$4(BotInfoActivity.this, view);
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
                materialRatingBar3.setOnRatingChangeListener(new MaterialRatingBar.OnRatingChangeListener() { // from class: com.iMe.ui.shop.BotInfoActivity$$ExternalSyntheticLambda6
                    @Override // me.zhanghai.android.materialratingbar.MaterialRatingBar.OnRatingChangeListener
                    public final void onRatingChanged(MaterialRatingBar materialRatingBar4, float f) {
                        BotInfoActivity.displayBotItem$lambda$5(BotInfoActivity.this, materialRatingBar4, f);
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
                textView18.setText(LocaleController.getInternalString(C3316R.string.neurobots_store_bot_added) + ' ' + shopItem.getCreated());
            }
            TextView textView19 = this.dateUpdated;
            if (textView19 != null) {
                textView19.setText(LocaleController.getInternalString(C3316R.string.neurobots_store_bot_updated) + ' ' + shopItem.getUpdated());
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
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
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
                        price = LocaleController.getInternalString(C3316R.string.neurobots_store_bot_action_download);
                        break;
                    case 3:
                        price = LocaleController.getInternalString(C3316R.string.neurobots_store_bot_action_update);
                        break;
                    case 4:
                        price = LocaleController.getInternalString(C3316R.string.neurobots_store_bot_status_downloading);
                        break;
                    case 5:
                        price = LocaleController.getInternalString(C3316R.string.neurobots_store_bot_action_disable);
                        break;
                    case 6:
                        price = LocaleController.getInternalString(C3316R.string.neurobots_store_bot_action_enable);
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                textView21.setText(price);
            }
        }
        TextView textView22 = this.button;
        if (textView22 != null) {
            textView22.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.shop.BotInfoActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BotInfoActivity.displayBotItem$lambda$9(BotInfoActivity.this, shopItem, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayBotItem$lambda$4(BotInfoActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ShopItem shopItem = this$0.botAnalog;
        if (shopItem != null) {
            Bundle bundle = new Bundle();
            bundle.putString("botId", shopItem.getBotId());
            bundle.putString("title", shopItem.getTitle());
            this$0.presentFragment(new BotInfoActivity(bundle), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayBotItem$lambda$5(BotInfoActivity this$0, MaterialRatingBar materialRatingBar, float f) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        materialRatingBar.setRating(f);
        materialRatingBar.setIsIndicator(true);
        ApplicationLoader.smartBotsManager.sendBotRatingEvent(this$0.botId, this$0.userId, (int) f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayBotItem$lambda$9(BotInfoActivity this$0, ShopItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        NotificationCenter.getInstance(this$0.currentAccount).postNotificationName(NotificationCenter.botButtonClicked, item);
    }

    private final void observeBotAnalog(ShopItem shopItem) {
        AiBotsManager aiBotsManager = ApplicationLoader.smartBotsManager;
        String langCode = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode, "getInstance().currentLocaleInfo.langCode");
        Observable<List<ShopItem>> observeOn = aiBotsManager.getAllBotsObservable(langCode).subscribeOn(Schedulers.m688io()).observeOn(AndroidSchedulers.mainThread());
        final BotInfoActivity$observeBotAnalog$1 botInfoActivity$observeBotAnalog$1 = new BotInfoActivity$observeBotAnalog$1(this, shopItem);
        Consumer<? super List<ShopItem>> consumer = new Consumer() { // from class: com.iMe.ui.shop.BotInfoActivity$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BotInfoActivity.observeBotAnalog$lambda$10(Function1.this, obj);
            }
        };
        final BotInfoActivity$observeBotAnalog$2 botInfoActivity$observeBotAnalog$2 = BotInfoActivity$observeBotAnalog$2.INSTANCE;
        this.disposable.add(observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.ui.shop.BotInfoActivity$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BotInfoActivity.observeBotAnalog$lambda$11(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void observeBotAnalog$lambda$10(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void observeBotAnalog$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
