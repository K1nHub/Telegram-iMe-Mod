package com.iMe.p031ui.shop;

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
import com.iMe.p031ui.shop.util.ContextExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import me.zhanghai.android.materialratingbar.MaterialRatingBar;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3541ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
/* compiled from: BotInfoActivity.kt */
/* renamed from: com.iMe.ui.shop.BotInfoActivity */
/* loaded from: classes4.dex */
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
    /* loaded from: classes4.dex */
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        this.disposable.clear();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        if (intent != null) {
            ApplicationLoader.purchaseHelper.onActivityResult(i, i2, intent);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.rootContainer = new SizeNotifierFrameLayout(context);
        LayoutInflater from = LayoutInflater.from(context);
        int i = C3473R.layout.fork_bots_description_content;
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.rootContainer;
        SizeNotifierFrameLayout fragmentView = null;
        if (sizeNotifierFrameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
            sizeNotifierFrameLayout = null;
        }
        initViewIds(from.inflate(i, (ViewGroup) sizeNotifierFrameLayout, true));
        this.actionBar.createMenu();
        this.actionBar.setBackButtonImage(C3473R.C3475drawable.ic_ab_back);
        this.actionBar.setTitle(this.title);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3541ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.shop.BotInfoActivity$createView$1
            @Override // org.telegram.p043ui.ActionBar.C3541ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    BotInfoActivity.this.finishFragment();
                }
            }
        });
        View view = this.statsContainer;
        if (view != null) {
            view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
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
        this.avatar = view != null ? (ImageView) view.findViewById(C3473R.C3476id.bot_avatar) : null;
        this.botName = view != null ? (TextView) view.findViewById(C3473R.C3476id.bot_name) : null;
        this.botDescription = view != null ? (TextView) view.findViewById(C3473R.C3476id.bot_description) : null;
        this.tagsContainer = view != null ? (FlexboxLayout) view.findViewById(C3473R.C3476id.tags_container) : null;
        this.ratingValue = view != null ? (TextView) view.findViewById(C3473R.C3476id.rating_number) : null;
        this.ratingLabel = view != null ? (TextView) view.findViewById(C3473R.C3476id.rating_label) : null;
        this.instalsLabel = view != null ? (TextView) view.findViewById(C3473R.C3476id.installs_label) : null;
        this.themesLabel = view != null ? (TextView) view.findViewById(C3473R.C3476id.themes_label) : null;
        this.developerLabel = view != null ? (TextView) view.findViewById(C3473R.C3476id.bot_developer) : null;
        this.botCurrentLanguage = view != null ? (TextView) view.findViewById(C3473R.C3476id.bot_current_language) : null;
        this.botAnalogLanguage = view != null ? (TextView) view.findViewById(C3473R.C3476id.bot_analog_language) : null;
        this.phrasesLabel = view != null ? (TextView) view.findViewById(C3473R.C3476id.phrases_label) : null;
        this.installsValue = view != null ? (TextView) view.findViewById(C3473R.C3476id.installs_counter) : null;
        this.themesValue = view != null ? (TextView) view.findViewById(C3473R.C3476id.themes_counter) : null;
        this.phrasesValue = view != null ? (TextView) view.findViewById(C3473R.C3476id.phrases_counter) : null;
        this.dateAdded = view != null ? (TextView) view.findViewById(C3473R.C3476id.bot_date_added) : null;
        this.dateUpdated = view != null ? (TextView) view.findViewById(C3473R.C3476id.bot_date_updated) : null;
        this.ratingBar = view != null ? (MaterialRatingBar) view.findViewById(C3473R.C3476id.rating) : null;
        this.button = view != null ? (TextView) view.findViewById(C3473R.C3476id.bot_info_button) : null;
        this.rateLabel = view != null ? (TextView) view.findViewById(C3473R.C3476id.textRateBot) : null;
        this.layoutContainer = view != null ? (ConstraintLayout) view.findViewById(C3473R.C3476id.layoutContainer) : null;
        this.progressBar = view != null ? (ProgressBar) view.findViewById(C3473R.C3476id.progressBar) : null;
        this.statsContainer = view != null ? view.findViewById(C3473R.C3476id.stats_container) : null;
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
        Observable<ShopItem> observeOn = aiBotsManager.getSingleBotObservable(str, langCode).subscribeOn(Schedulers.m697io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<ShopItem, Unit> function1 = new Function1<ShopItem, Unit>() { // from class: com.iMe.ui.shop.BotInfoActivity$subscribeToBotContent$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShopItem shopItem) {
                invoke2(shopItem);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ShopItem item) {
                BotInfoActivity botInfoActivity = BotInfoActivity.this;
                Intrinsics.checkNotNullExpressionValue(item, "item");
                botInfoActivity.displayBotItem(item);
            }
        };
        Consumer<? super ShopItem> consumer = new Consumer() { // from class: com.iMe.ui.shop.BotInfoActivity$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BotInfoActivity.subscribeToBotContent$lambda$0(Function1.this, obj);
            }
        };
        final BotInfoActivity$subscribeToBotContent$2 botInfoActivity$subscribeToBotContent$2 = new Function1<Throwable, Unit>() { // from class: com.iMe.ui.shop.BotInfoActivity$subscribeToBotContent$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                th.printStackTrace();
            }
        };
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
            textView.setBackgroundColor(Theme.getColor(Theme.key_chats_actionBackground));
        }
        ImageView imageView = this.avatar;
        if (imageView != null) {
            ImageViewExtKt.loadFrom$default(imageView, shopItem.getAvatar(), null, false, 6, null);
        }
        TextView textView2 = this.botName;
        if (textView2 != null) {
            textView2.setText(shopItem.getTitle());
        }
        TextView textView3 = this.botName;
        if (textView3 != null) {
            textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
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
            textView6.setText(LocaleController.formatPluralStringInternal(C3473R.string.plural_info_votes, (int) shopItem.getReviews()));
        }
        TextView textView7 = this.themesLabel;
        if (textView7 != null) {
            textView7.setText(LocaleController.getInternalString(C3473R.string.neurobots_store_bot_info_themes));
        }
        TextView textView8 = this.phrasesLabel;
        if (textView8 != null) {
            textView8.setText(LocaleController.getInternalString(C3473R.string.neurobots_store_bot_info_phrases));
        }
        TextView textView9 = this.developerLabel;
        if (textView9 != null) {
            textView9.setText(LocaleController.getInternalString(C3473R.string.neurobots_store_bot_info_developer));
        }
        TextView textView10 = this.instalsLabel;
        if (textView10 != null) {
            textView10.setText(LocaleController.getInternalString(C3473R.string.neurobots_store_bot_info_installs));
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
            textView14.setText(LocaleController.getInternalString(C3473R.string.neurobots_store_bot_info_rate));
        }
        int i = WhenMappings.$EnumSwitchMapping$0[shopItem.getLanguage().ordinal()];
        if (i == 1) {
            internalString = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_info_supported_language_ru);
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            internalString = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_info_supported_language_en);
        }
        TextView textView15 = this.botCurrentLanguage;
        if (textView15 != null) {
            textView15.setText(LocaleController.getInternalString(C3473R.string.neurobots_store_bot_info_supported_languages) + ": \n" + internalString);
        }
        TextView textView16 = this.botAnalogLanguage;
        if (textView16 != null) {
            textView16.setTextColor(Theme.getColor(Theme.key_chats_actionBackground));
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
        Activity parentActivity = getParentActivity();
        if (parentActivity != null) {
            TextView textView18 = this.dateAdded;
            if (textView18 != null) {
                textView18.setText(LocaleController.getInternalString(C3473R.string.neurobots_store_bot_added) + ' ' + shopItem.getCreated());
            }
            TextView textView19 = this.dateUpdated;
            if (textView19 != null) {
                textView19.setText(LocaleController.getInternalString(C3473R.string.neurobots_store_bot_updated) + ' ' + shopItem.getUpdated());
            }
            int pxToDp = ContextExtKt.pxToDp(parentActivity, 16);
            List<SmartTag> tags = shopItem.getTags();
            ArrayList<SmartTag> arrayList = new ArrayList();
            for (Object obj : tags) {
                if (!((SmartTag) obj).getHidden()) {
                    arrayList.add(obj);
                }
            }
            for (SmartTag smartTag : arrayList) {
                TextView textView20 = new TextView(parentActivity);
                textView20.setText(smartTag.getTitle());
                textView20.setTextColor(-1);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(Theme.getColor(Theme.key_chats_actionBackground));
                gradientDrawable.setCornerRadius(AndroidUtilities.m73dp(50.0f));
                textView20.setPadding(AndroidUtilities.m73dp(8.0f), AndroidUtilities.m73dp(4.0f), AndroidUtilities.m73dp(8.0f), AndroidUtilities.m73dp(4.0f));
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
                        price = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_action_download);
                        break;
                    case 3:
                        price = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_action_update);
                        break;
                    case 4:
                        price = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_status_downloading);
                        break;
                    case 5:
                        price = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_action_disable);
                        break;
                    case 6:
                        price = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_action_enable);
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
        NotificationCenter.getInstance(this$0.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botButtonClicked, item);
    }

    private final void observeBotAnalog(final ShopItem shopItem) {
        AiBotsManager aiBotsManager = ApplicationLoader.smartBotsManager;
        String langCode = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode, "getInstance().currentLocaleInfo.langCode");
        Observable<List<ShopItem>> observeOn = aiBotsManager.getAllBotsObservable(langCode).subscribeOn(Schedulers.m697io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<List<? extends ShopItem>, Unit> function1 = new Function1<List<? extends ShopItem>, Unit>() { // from class: com.iMe.ui.shop.BotInfoActivity$observeBotAnalog$1

            /* compiled from: BotInfoActivity.kt */
            /* renamed from: com.iMe.ui.shop.BotInfoActivity$observeBotAnalog$1$WhenMappings */
            /* loaded from: classes4.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

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
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends ShopItem> list) {
                invoke2((List<ShopItem>) list);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Code restructure failed: missing block: B:15:0x006f, code lost:
                r0.botAnalog = r2;
                r13 = r12.this$0.botAnalog;
             */
            /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
                if (r13 == null) goto L26;
             */
            /* JADX WARN: Code restructure failed: missing block: B:17:0x007c, code lost:
                r0 = r12.this$0.botAnalogLanguage;
             */
            /* JADX WARN: Code restructure failed: missing block: B:18:0x0082, code lost:
                if (r0 != null) goto L15;
             */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x0085, code lost:
                r13 = com.iMe.p031ui.shop.BotInfoActivity$observeBotAnalog$1.WhenMappings.$EnumSwitchMapping$0[r13.getLanguage().ordinal()];
             */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
                if (r13 == 1) goto L24;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x0093, code lost:
                if (r13 != 2) goto L22;
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0095, code lost:
                r13 = org.telegram.messenger.LocaleController.getInternalString(org.telegram.messenger.C3473R.string.neurobots_store_bot_info_supported_language_en);
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x00a1, code lost:
                throw new kotlin.NoWhenBranchMatchedException();
             */
            /* JADX WARN: Code restructure failed: missing block: B:26:0x00a2, code lost:
                r13 = org.telegram.messenger.LocaleController.getInternalString(org.telegram.messenger.C3473R.string.neurobots_store_bot_info_supported_language_ru);
             */
            /* JADX WARN: Code restructure failed: missing block: B:27:0x00a8, code lost:
                r0.setText(r13);
             */
            /* JADX WARN: Code restructure failed: missing block: B:28:0x00ab, code lost:
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
                return;
             */
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke2(java.util.List<com.iMe.bots.domain.model.ShopItem> r13) {
                /*
                    r12 = this;
                    com.iMe.ui.shop.BotInfoActivity r0 = com.iMe.p031ui.shop.BotInfoActivity.this
                    java.lang.String r1 = "items"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r1)
                    com.iMe.bots.domain.model.ShopItem r1 = r2
                    int r2 = r13.size()
                    java.util.ListIterator r13 = r13.listIterator(r2)
                L11:
                    boolean r2 = r13.hasPrevious()
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L6e
                    java.lang.Object r2 = r13.previous()
                    r5 = r2
                    com.iMe.bots.domain.model.ShopItem r5 = (com.iMe.bots.domain.model.ShopItem) r5
                    com.iMe.bots.domain.model.BotLanguage r6 = r1.getLanguage()
                    int[] r7 = com.iMe.p031ui.shop.BotInfoActivity$observeBotAnalog$1.WhenMappings.$EnumSwitchMapping$0
                    int r6 = r6.ordinal()
                    r6 = r7[r6]
                    if (r6 == r4) goto L4e
                    if (r6 != r3) goto L48
                    java.lang.String r5 = r5.getBotId()
                    java.lang.String r6 = r1.getBotId()
                    r9 = 0
                    r10 = 4
                    r11 = 0
                    java.lang.String r7 = "_eng"
                    java.lang.String r8 = ""
                    java.lang.String r6 = kotlin.text.StringsKt.replace$default(r6, r7, r8, r9, r10, r11)
                    boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
                    goto L6b
                L48:
                    kotlin.NoWhenBranchMatchedException r13 = new kotlin.NoWhenBranchMatchedException
                    r13.<init>()
                    throw r13
                L4e:
                    java.lang.String r5 = r5.getBotId()
                    java.lang.StringBuilder r6 = new java.lang.StringBuilder
                    r6.<init>()
                    java.lang.String r7 = r1.getBotId()
                    r6.append(r7)
                    java.lang.String r7 = "_eng"
                    r6.append(r7)
                    java.lang.String r6 = r6.toString()
                    boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
                L6b:
                    if (r5 == 0) goto L11
                    goto L6f
                L6e:
                    r2 = 0
                L6f:
                    com.iMe.bots.domain.model.ShopItem r2 = (com.iMe.bots.domain.model.ShopItem) r2
                    com.iMe.p031ui.shop.BotInfoActivity.access$setBotAnalog$p(r0, r2)
                    com.iMe.ui.shop.BotInfoActivity r13 = com.iMe.p031ui.shop.BotInfoActivity.this
                    com.iMe.bots.domain.model.ShopItem r13 = com.iMe.p031ui.shop.BotInfoActivity.access$getBotAnalog$p(r13)
                    if (r13 == 0) goto Lab
                    com.iMe.ui.shop.BotInfoActivity r0 = com.iMe.p031ui.shop.BotInfoActivity.this
                    android.widget.TextView r0 = com.iMe.p031ui.shop.BotInfoActivity.access$getBotAnalogLanguage$p(r0)
                    if (r0 != 0) goto L85
                    goto Lab
                L85:
                    com.iMe.bots.domain.model.BotLanguage r13 = r13.getLanguage()
                    int[] r1 = com.iMe.p031ui.shop.BotInfoActivity$observeBotAnalog$1.WhenMappings.$EnumSwitchMapping$0
                    int r13 = r13.ordinal()
                    r13 = r1[r13]
                    if (r13 == r4) goto La2
                    if (r13 != r3) goto L9c
                    int r13 = org.telegram.messenger.C3473R.string.neurobots_store_bot_info_supported_language_en
                    java.lang.String r13 = org.telegram.messenger.LocaleController.getInternalString(r13)
                    goto La8
                L9c:
                    kotlin.NoWhenBranchMatchedException r13 = new kotlin.NoWhenBranchMatchedException
                    r13.<init>()
                    throw r13
                La2:
                    int r13 = org.telegram.messenger.C3473R.string.neurobots_store_bot_info_supported_language_ru
                    java.lang.String r13 = org.telegram.messenger.LocaleController.getInternalString(r13)
                La8:
                    r0.setText(r13)
                Lab:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.shop.BotInfoActivity$observeBotAnalog$1.invoke2(java.util.List):void");
            }
        };
        Consumer<? super List<ShopItem>> consumer = new Consumer() { // from class: com.iMe.ui.shop.BotInfoActivity$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BotInfoActivity.observeBotAnalog$lambda$10(Function1.this, obj);
            }
        };
        final BotInfoActivity$observeBotAnalog$2 botInfoActivity$observeBotAnalog$2 = new Function1<Throwable, Unit>() { // from class: com.iMe.ui.shop.BotInfoActivity$observeBotAnalog$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                th.printStackTrace();
            }
        };
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
