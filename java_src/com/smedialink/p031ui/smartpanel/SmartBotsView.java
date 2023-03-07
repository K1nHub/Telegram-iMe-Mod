package com.smedialink.p031ui.smartpanel;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.smedialink.bots.domain.model.SmartBotResponse;
import com.smedialink.p031ui.smartpanel.SmartBotsView;
import com.smedialink.p031ui.smartpanel.extension.ImageViewExtKt;
import com.smedialink.p031ui.smartpanel.extension.SmartPanelViewExtKt;
import com.smedialink.p031ui.smartpanel.mapper.SmartContentMapper;
import com.smedialink.p031ui.smartpanel.model.SmartBotTab;
import com.smedialink.p031ui.smartpanel.model.content.TabBotAnswerItem;
import com.smedialink.p031ui.smartpanel.view.SmartBotContentView;
import io.reactivex.disposables.CompositeDisposable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.NeuroBotsController;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.databinding.ForkPanelViewBinding;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.PhotoViewer;
import org.telegram.tgnet.TLRPC$BotInlineResult;
/* compiled from: SmartBotsView.kt */
/* renamed from: com.smedialink.ui.smartpanel.SmartBotsView */
/* loaded from: classes3.dex */
public final class SmartBotsView extends FrameLayout {
    private ForkPanelViewBinding binding;
    private List<SmartBotTab> content;
    private final List<SmartBotContentView> contentViews;
    private final int currentAccount;
    private SmartBotContentView.BotResponseType currentBotResponseType;
    private final CompositeDisposable disposables;
    private Listener listener;
    private final SmartContentMapper mapper;
    private final SmartBotsView$pagerAdapter$1 pagerAdapter;
    private int panelHeight;

    /* compiled from: SmartBotsView.kt */
    /* renamed from: com.smedialink.ui.smartpanel.SmartBotsView$Listener */
    /* loaded from: classes3.dex */
    public interface Listener {
        void onBotsSettingsClick();

        void onGifAnswerSelected(PhotoViewer.PhotoViewerProvider photoViewerProvider, List<? extends TLRPC$BotInlineResult> list, int i);

        void onShopClick();

        void onTextAnswerSelected(TabBotAnswerItem tabBotAnswerItem, int i);

        void onTranslationYChanged(float f);

        void sendChosenGif(int i, long j, String str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.smedialink.ui.smartpanel.SmartBotsView$pagerAdapter$1] */
    public SmartBotsView(Context context, int i, final long j) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.currentAccount = i;
        ForkPanelViewBinding inflate = ForkPanelViewBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        this.content = new ArrayList();
        this.mapper = new SmartContentMapper();
        this.disposables = new CompositeDisposable();
        this.contentViews = new ArrayList();
        this.currentBotResponseType = SmartBotContentView.BotResponseType.TEXT;
        ForkPanelViewBinding forkPanelViewBinding = this.binding;
        forkPanelViewBinding.viewpager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.smedialink.ui.smartpanel.SmartBotsView$1$1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i2, float f, int i3) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
                SmartBotsView.this.updateBaseIcons();
                SmartBotsView.this.updateIndicator();
            }
        });
        forkPanelViewBinding.tabs.setupWithViewPager(forkPanelViewBinding.viewpager);
        addView(this.binding.getRoot());
        this.pagerAdapter = new PagerAdapter() { // from class: com.smedialink.ui.smartpanel.SmartBotsView$pagerAdapter$1
            @Override // androidx.viewpager.widget.PagerAdapter
            public CharSequence getPageTitle(int i2) {
                return null;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public boolean isViewFromObject(View view, Object obj) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(obj, "obj");
                return Intrinsics.areEqual(view, obj);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                List list;
                list = SmartBotsView.this.content;
                return list.size();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public Object instantiateItem(ViewGroup container, int i2) {
                List list;
                SmartBotContentView.BotResponseType botResponseType;
                SmartBotsView.Listener listener;
                List list2;
                Intrinsics.checkNotNullParameter(container, "container");
                list = SmartBotsView.this.content;
                Context context2 = container.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "container.context");
                botResponseType = SmartBotsView.this.currentBotResponseType;
                listener = SmartBotsView.this.listener;
                SmartBotContentView smartBotContentView = new SmartBotContentView(context2, (SmartBotTab) list.get(i2), botResponseType, listener, j);
                container.addView(smartBotContentView);
                list2 = SmartBotsView.this.contentViews;
                list2.add(smartBotContentView);
                return smartBotContentView;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public void destroyItem(ViewGroup container, int i2, Object obj) {
                Intrinsics.checkNotNullParameter(container, "container");
                Intrinsics.checkNotNullParameter(obj, "obj");
                container.removeView((View) obj);
            }
        };
    }

    public final int getCurrentAccount() {
        return this.currentAccount;
    }

    public final void setHeight(int i) {
        this.panelHeight = i;
        getLayoutParams().height = i;
    }

    public final void setListener(Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setData(List<SmartBotResponse> list, boolean z) {
        this.content.clear();
        this.content.addAll(this.mapper.mapToTabs(list, NeuroBotsController.Companion.getInstance(this.currentAccount).isShowOftenUsedNeuroBotsEnabled()));
        ForkPanelViewBinding forkPanelViewBinding = this.binding;
        if (this.content.isEmpty()) {
            forkPanelViewBinding.textEmptyBots.setVisibility(0);
            forkPanelViewBinding.appbar.setVisibility(8);
        } else {
            forkPanelViewBinding.textEmptyBots.setVisibility(8);
            forkPanelViewBinding.appbar.setVisibility(0);
        }
        forkPanelViewBinding.viewpager.setAdapter(this.pagerAdapter);
        if (z) {
            this.currentBotResponseType = SmartBotContentView.BotResponseType.TEXT;
            for (SmartBotContentView smartBotContentView : this.contentViews) {
                smartBotContentView.setBotResponseType(this.currentBotResponseType);
            }
        }
        notifyDataSetChanged();
        setupLayoutBottom();
        updateIcons();
        updateIndicator();
        updateTabListeners();
        wrapTabIndicatorToTitle();
        moveToInitialPosition();
        firePageSelectedEvent();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        Listener listener = this.listener;
        if (listener == null) {
            return;
        }
        listener.onTranslationYChanged(f);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.panelHeight;
        if (i3 == 0) {
            i3 = getLayoutParams().height;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(getLayoutParams().width, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.disposables.clear();
    }

    private final void updateIcons() {
        int i = 0;
        for (Object obj : this.content) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            SmartBotTab smartBotTab = (SmartBotTab) obj;
            View inflate = View.inflate(getContext(), C3158R.layout.fork_panel_custom_tab_header, null);
            ImageView avatar = (ImageView) inflate.findViewById(C3158R.C3161id.avatar);
            if (smartBotTab.getIconRes() != 0) {
                avatar.setImageResource(smartBotTab.getIconRes());
            } else if (smartBotTab.getIconUrl().length() > 0) {
                Intrinsics.checkNotNullExpressionValue(avatar, "avatar");
                String iconUrl = smartBotTab.getIconUrl();
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                ImageViewExtKt.loadFrom$default(avatar, iconUrl, context, null, false, 12, null);
            } else {
                avatar.setImageResource(C3158R.C3160drawable.bot_avatar_any);
            }
            TabLayout.Tab tabAt = this.binding.tabs.getTabAt(i);
            if (tabAt != null) {
                tabAt.setCustomView(inflate);
            }
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateIndicator() {
        View customView;
        int i = 0;
        for (Object obj : this.content) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            SmartBotTab smartBotTab = (SmartBotTab) obj;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            gradientDrawable.setShape(1);
            if (i == this.binding.viewpager.getCurrentItem() && !Intrinsics.areEqual(smartBotTab.getBotId(), "recent")) {
                gradientDrawable.setStroke(AndroidUtilities.m51dp(2.0f), Theme.getColor("chats_actionBackground"));
            }
            TabLayout.Tab tabAt = this.binding.tabs.getTabAt(i);
            View view = null;
            if (tabAt != null && (customView = tabAt.getCustomView()) != null) {
                view = customView.findViewById(C3158R.C3161id.avatar_bg);
            }
            if (view != null) {
                view.setBackground(gradientDrawable);
            }
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateBaseIcons() {
        Drawable themedDrawable;
        View customView;
        ImageView imageView;
        Iterator<SmartBotTab> it = this.content.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it.next().getBotId(), "recent")) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            if (this.binding.viewpager.getCurrentItem() == i) {
                themedDrawable = Theme.getThemedDrawable(getContext(), C3158R.C3160drawable.ic_bots_recent, Theme.getColor("chats_actionBackground"));
                Intrinsics.checkNotNullExpressionValue(themedDrawable, "getThemedDrawable(contex…_chats_actionBackground))");
                gradientDrawable.setColor(Color.parseColor("#33cccccc"));
            } else {
                themedDrawable = Theme.getThemedDrawable(getContext(), C3158R.C3160drawable.ic_bots_recent, Color.parseColor("#A8A8A8"));
                Intrinsics.checkNotNullExpressionValue(themedDrawable, "getThemedDrawable(contex…or.parseColor(\"#A8A8A8\"))");
            }
            TabLayout.Tab tabAt = this.binding.tabs.getTabAt(i);
            if (tabAt == null || (customView = tabAt.getCustomView()) == null || (imageView = (ImageView) customView.findViewById(C3158R.C3161id.avatar)) == null) {
                return;
            }
            imageView.setImageDrawable(themedDrawable);
            imageView.setBackground(gradientDrawable);
        }
    }

    private final void updateTabListeners() {
        ViewGroup viewGroup;
        int childCount;
        int i = 0;
        final View childAt = this.binding.tabs.getChildAt(0);
        if (!(childAt instanceof ViewGroup) || (childCount = (viewGroup = (ViewGroup) childAt).getChildCount()) <= 0) {
            return;
        }
        while (true) {
            int i2 = i + 1;
            viewGroup.getChildAt(i).setOnLongClickListener(new View.OnLongClickListener() { // from class: com.smedialink.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda4
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m1533updateTabListeners$lambda7;
                    m1533updateTabListeners$lambda7 = SmartBotsView.m1533updateTabListeners$lambda7(childAt, this, view);
                    return m1533updateTabListeners$lambda7;
                }
            });
            if (i2 >= childCount) {
                return;
            }
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateTabListeners$lambda-7  reason: not valid java name */
    public static final boolean m1533updateTabListeners$lambda7(View view, SmartBotsView this$0, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SmartBotTab smartBotTab = this$0.content.get(((ViewGroup) view).indexOfChild(view2));
        if (Intrinsics.areEqual(smartBotTab.getBotId(), "recent")) {
            return false;
        }
        NotificationCenter.getInstance(this$0.getCurrentAccount()).postNotificationName(NotificationCenter.botContextMenu, smartBotTab.getBotId(), smartBotTab.getBotName());
        return true;
    }

    private final void wrapTabIndicatorToTitle() {
        int floatToDp = SmartPanelViewExtKt.floatToDp(this, 14.0f);
        View childAt = this.binding.tabs.getChildAt(0);
        if (childAt instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) childAt;
            int childCount = viewGroup.getChildCount();
            if (childCount > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    View childAt2 = viewGroup.getChildAt(i);
                    childAt2.setMinimumWidth(0);
                    childAt2.setPadding(floatToDp, childAt2.getPaddingTop(), floatToDp, childAt2.getPaddingBottom());
                    if (childAt2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        setTabMargin((ViewGroup.MarginLayoutParams) layoutParams);
                    }
                    if (i2 >= childCount) {
                        break;
                    }
                    i = i2;
                }
            }
            this.binding.tabs.requestLayout();
        }
    }

    private final void setTabMargin(ViewGroup.MarginLayoutParams marginLayoutParams) {
        marginLayoutParams.setMarginStart(0);
        marginLayoutParams.setMarginEnd(0);
        marginLayoutParams.leftMargin = 0;
        marginLayoutParams.rightMargin = 0;
    }

    private final void setupLayoutBottom() {
        final ForkPanelViewBinding forkPanelViewBinding = this.binding;
        forkPanelViewBinding.layoutBottom.setBackgroundColor(Theme.getColor("chat_emojiPanelBackground"));
        Drawable createEmojiIconSelectorVectorDrawable = Theme.createEmojiIconSelectorVectorDrawable(getContext(), C3158R.C3160drawable.fork_ic_bots_responses, Theme.getColor("chat_emojiBottomPanelIcon"), Theme.getColor("chat_emojiPanelIconSelected"));
        Theme.setEmojiVectorDrawableColor(createEmojiIconSelectorVectorDrawable, Theme.getColor("chat_emojiBottomPanelIcon"), false);
        Theme.setEmojiVectorDrawableColor(createEmojiIconSelectorVectorDrawable, Theme.getColor("chat_emojiPanelIconSelected"), true);
        forkPanelViewBinding.imageTextResponses.setImageDrawable(createEmojiIconSelectorVectorDrawable);
        Drawable createEmojiIconSelectorDrawable = Theme.createEmojiIconSelectorDrawable(getContext(), C3158R.C3160drawable.smiles_tab_gif, Theme.getColor("chat_emojiBottomPanelIcon"), Theme.getColor("chat_emojiPanelIconSelected"));
        Theme.setEmojiDrawableColor(createEmojiIconSelectorDrawable, Theme.getColor("chat_emojiBottomPanelIcon"), false);
        Theme.setEmojiDrawableColor(createEmojiIconSelectorDrawable, Theme.getColor("chat_emojiPanelIconSelected"), true);
        forkPanelViewBinding.imageGifResponses.setImageDrawable(createEmojiIconSelectorDrawable);
        forkPanelViewBinding.imageGifResponses.setSelected(true);
        forkPanelViewBinding.imageTextResponses.setSelected(true);
        forkPanelViewBinding.imageBots.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chat_emojiPanelBackspace"), PorterDuff.Mode.SRC_IN));
        forkPanelViewBinding.imageSettings.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chat_emojiPanelBackspace"), PorterDuff.Mode.MULTIPLY));
        forkPanelViewBinding.imageTextResponses.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SmartBotsView.m1532setupLayoutBottom$lambda14$lambda9(ForkPanelViewBinding.this, this, view);
            }
        });
        forkPanelViewBinding.imageGifResponses.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SmartBotsView.m1529setupLayoutBottom$lambda14$lambda11(ForkPanelViewBinding.this, this, view);
            }
        });
        forkPanelViewBinding.imageBots.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SmartBotsView.m1530setupLayoutBottom$lambda14$lambda12(SmartBotsView.this, view);
            }
        });
        forkPanelViewBinding.imageSettings.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SmartBotsView.m1531setupLayoutBottom$lambda14$lambda13(SmartBotsView.this, view);
            }
        });
        forkPanelViewBinding.imageGifResponses.setSelected(this.currentBotResponseType == SmartBotContentView.BotResponseType.GIF);
        forkPanelViewBinding.imageTextResponses.setSelected(this.currentBotResponseType == SmartBotContentView.BotResponseType.TEXT);
        forkPanelViewBinding.tabs.setBackgroundColor(Theme.getColor("chat_emojiPanelBackground"));
        setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        forkPanelViewBinding.divider1.setBackgroundColor(Theme.getColor("divider"));
        forkPanelViewBinding.divider2.setBackgroundColor(Theme.getColor("divider"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupLayoutBottom$lambda-14$lambda-9  reason: not valid java name */
    public static final void m1532setupLayoutBottom$lambda14$lambda9(ForkPanelViewBinding this_with, SmartBotsView this$0, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_with.imageTextResponses.setSelected(true);
        this_with.imageGifResponses.setSelected(false);
        this$0.currentBotResponseType = SmartBotContentView.BotResponseType.TEXT;
        for (SmartBotContentView smartBotContentView : this$0.contentViews) {
            smartBotContentView.setBotResponseType(this$0.currentBotResponseType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupLayoutBottom$lambda-14$lambda-11  reason: not valid java name */
    public static final void m1529setupLayoutBottom$lambda14$lambda11(ForkPanelViewBinding this_with, SmartBotsView this$0, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_with.imageTextResponses.setSelected(false);
        this_with.imageGifResponses.setSelected(true);
        this$0.currentBotResponseType = SmartBotContentView.BotResponseType.GIF;
        for (SmartBotContentView smartBotContentView : this$0.contentViews) {
            smartBotContentView.setBotResponseType(this$0.currentBotResponseType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupLayoutBottom$lambda-14$lambda-12  reason: not valid java name */
    public static final void m1530setupLayoutBottom$lambda14$lambda12(SmartBotsView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Listener listener = this$0.listener;
        if (listener == null) {
            return;
        }
        listener.onShopClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupLayoutBottom$lambda-14$lambda-13  reason: not valid java name */
    public static final void m1531setupLayoutBottom$lambda14$lambda13(SmartBotsView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Listener listener = this$0.listener;
        if (listener == null) {
            return;
        }
        listener.onBotsSettingsClick();
    }

    private final void moveToInitialPosition() {
        this.binding.viewpager.setCurrentItem(0, true);
    }

    private final void firePageSelectedEvent() {
        this.binding.viewpager.post(new Runnable() { // from class: com.smedialink.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                SmartBotsView.m1528firePageSelectedEvent$lambda15(SmartBotsView.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: firePageSelectedEvent$lambda-15  reason: not valid java name */
    public static final void m1528firePageSelectedEvent$lambda15(SmartBotsView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateBaseIcons();
        this$0.updateIndicator();
    }
}
