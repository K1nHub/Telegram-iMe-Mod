package com.iMe.p031ui.smartpanel;

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
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.iMe.bots.domain.model.SmartBotResponse;
import com.iMe.fork.controller.NeuroBotsController;
import com.iMe.p031ui.smartpanel.SmartBotsView;
import com.iMe.p031ui.smartpanel.extension.SmartPanelViewExtKt;
import com.iMe.p031ui.smartpanel.mapper.SmartContentMapper;
import com.iMe.p031ui.smartpanel.model.SmartBotTab;
import com.iMe.p031ui.smartpanel.model.content.TabBotAnswerItem;
import com.iMe.p031ui.smartpanel.view.SmartBotContentView;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import io.reactivex.disposables.CompositeDisposable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.databinding.ForkPanelViewBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.tgnet.TLRPC$BotInlineResult;
/* compiled from: SmartBotsView.kt */
/* renamed from: com.iMe.ui.smartpanel.SmartBotsView */
/* loaded from: classes4.dex */
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
    /* renamed from: com.iMe.ui.smartpanel.SmartBotsView$Listener */
    /* loaded from: classes4.dex */
    public interface Listener {
        void onBotsSettingsClick();

        void onGifAnswerSelected(PhotoViewer.PhotoViewerProvider photoViewerProvider, List<? extends TLRPC$BotInlineResult> list, int i);

        void onShopClick();

        void onTextAnswerSelected(TabBotAnswerItem tabBotAnswerItem, int i);

        void onTranslationYChanged(float f);

        void sendChosenGif(int i, long j, String str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.iMe.ui.smartpanel.SmartBotsView$pagerAdapter$1] */
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
        forkPanelViewBinding.viewpager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.iMe.ui.smartpanel.SmartBotsView$1$1
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
        this.pagerAdapter = new PagerAdapter() { // from class: com.iMe.ui.smartpanel.SmartBotsView$pagerAdapter$1
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
        if (listener != null) {
            listener.onTranslationYChanged(f);
        }
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
            View inflate = View.inflate(getContext(), C3558R.layout.fork_panel_custom_tab_header, null);
            ImageView avatar = (ImageView) inflate.findViewById(C3558R.C3561id.avatar);
            if (smartBotTab.getIconRes() != 0) {
                avatar.setImageResource(smartBotTab.getIconRes());
            } else if (smartBotTab.getIconUrl().length() > 0) {
                Intrinsics.checkNotNullExpressionValue(avatar, "avatar");
                ImageViewExtKt.loadFrom$default(avatar, smartBotTab.getIconUrl(), null, false, 6, null);
            } else {
                avatar.setImageResource(C3558R.C3560drawable.bot_avatar_any);
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
                gradientDrawable.setStroke(AndroidUtilities.m73dp(2.0f), Theme.getColor(Theme.key_chats_actionBackground));
            }
            TabLayout.Tab tabAt = this.binding.tabs.getTabAt(i);
            View findViewById = (tabAt == null || (customView = tabAt.getCustomView()) == null) ? null : customView.findViewById(C3558R.C3561id.avatar_bg);
            if (findViewById != null) {
                findViewById.setBackground(gradientDrawable);
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
                themedDrawable = Theme.getThemedDrawable(getContext(), C3558R.C3560drawable.ic_bots_recent, Theme.getColor(Theme.key_chats_actionBackground));
                Intrinsics.checkNotNullExpressionValue(themedDrawable, "getThemedDrawable(contex…_chats_actionBackground))");
                gradientDrawable.setColor(Color.parseColor("#33cccccc"));
            } else {
                themedDrawable = Theme.getThemedDrawable(getContext(), C3558R.C3560drawable.ic_bots_recent, Color.parseColor("#A8A8A8"));
                Intrinsics.checkNotNullExpressionValue(themedDrawable, "getThemedDrawable(contex…or.parseColor(\"#A8A8A8\"))");
            }
            TabLayout.Tab tabAt = this.binding.tabs.getTabAt(i);
            if (tabAt == null || (customView = tabAt.getCustomView()) == null || (imageView = (ImageView) customView.findViewById(C3558R.C3561id.avatar)) == null) {
                return;
            }
            imageView.setImageDrawable(themedDrawable);
            imageView.setBackground(gradientDrawable);
        }
    }

    private final void updateTabListeners() {
        final View childAt = this.binding.tabs.getChildAt(0);
        if (childAt instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) childAt;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                viewGroup.getChildAt(i).setOnLongClickListener(new View.OnLongClickListener() { // from class: com.iMe.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        boolean updateTabListeners$lambda$7;
                        updateTabListeners$lambda$7 = SmartBotsView.updateTabListeners$lambda$7(childAt, this, view);
                        return updateTabListeners$lambda$7;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean updateTabListeners$lambda$7(View view, SmartBotsView this$0, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SmartBotTab smartBotTab = this$0.content.get(((ViewGroup) view).indexOfChild(view2));
        if (Intrinsics.areEqual(smartBotTab.getBotId(), "recent")) {
            return false;
        }
        NotificationCenter.getInstance(this$0.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botContextMenu, smartBotTab.getBotId(), smartBotTab.getBotName());
        return true;
    }

    private final void wrapTabIndicatorToTitle() {
        int floatToDp = SmartPanelViewExtKt.floatToDp(this, 14.0f);
        View childAt = this.binding.tabs.getChildAt(0);
        if (childAt instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) childAt;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt2 = viewGroup.getChildAt(i);
                childAt2.setMinimumWidth(0);
                childAt2.setPadding(floatToDp, childAt2.getPaddingTop(), floatToDp, childAt2.getPaddingBottom());
                if (childAt2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    setTabMargin((ViewGroup.MarginLayoutParams) layoutParams);
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
        FrameLayout frameLayout = forkPanelViewBinding.layoutBottom;
        int i = Theme.key_chat_emojiPanelBackground;
        frameLayout.setBackgroundColor(Theme.getColor(i));
        Context context = getContext();
        int i2 = C3558R.C3560drawable.fork_ic_bots_responses;
        int i3 = Theme.key_chat_emojiBottomPanelIcon;
        int color = Theme.getColor(i3);
        int i4 = Theme.key_chat_emojiPanelIconSelected;
        Drawable createEmojiIconSelectorVectorDrawable = Theme.createEmojiIconSelectorVectorDrawable(context, i2, color, Theme.getColor(i4));
        Theme.setEmojiVectorDrawableColor(createEmojiIconSelectorVectorDrawable, Theme.getColor(i3), false);
        Theme.setEmojiVectorDrawableColor(createEmojiIconSelectorVectorDrawable, Theme.getColor(i4), true);
        forkPanelViewBinding.imageTextResponses.setImageDrawable(createEmojiIconSelectorVectorDrawable);
        Drawable createEmojiIconSelectorDrawable = Theme.createEmojiIconSelectorDrawable(getContext(), C3558R.C3560drawable.smiles_tab_gif, Theme.getColor(i3), Theme.getColor(i4));
        Theme.setEmojiDrawableColor(createEmojiIconSelectorDrawable, Theme.getColor(i3), false);
        Theme.setEmojiDrawableColor(createEmojiIconSelectorDrawable, Theme.getColor(i4), true);
        forkPanelViewBinding.imageGifResponses.setImageDrawable(createEmojiIconSelectorDrawable);
        forkPanelViewBinding.imageGifResponses.setSelected(true);
        forkPanelViewBinding.imageTextResponses.setSelected(true);
        AppCompatImageView appCompatImageView = forkPanelViewBinding.imageBots;
        int i5 = Theme.key_chat_emojiPanelBackspace;
        appCompatImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i5), PorterDuff.Mode.SRC_IN));
        forkPanelViewBinding.imageSettings.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i5), PorterDuff.Mode.MULTIPLY));
        forkPanelViewBinding.imageTextResponses.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SmartBotsView.setupLayoutBottom$lambda$14$lambda$9(ForkPanelViewBinding.this, this, view);
            }
        });
        forkPanelViewBinding.imageGifResponses.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SmartBotsView.setupLayoutBottom$lambda$14$lambda$11(ForkPanelViewBinding.this, this, view);
            }
        });
        forkPanelViewBinding.imageBots.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SmartBotsView.setupLayoutBottom$lambda$14$lambda$12(SmartBotsView.this, view);
            }
        });
        forkPanelViewBinding.imageSettings.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SmartBotsView.setupLayoutBottom$lambda$14$lambda$13(SmartBotsView.this, view);
            }
        });
        forkPanelViewBinding.imageGifResponses.setSelected(this.currentBotResponseType == SmartBotContentView.BotResponseType.GIF);
        forkPanelViewBinding.imageTextResponses.setSelected(this.currentBotResponseType == SmartBotContentView.BotResponseType.TEXT);
        forkPanelViewBinding.tabs.setBackgroundColor(Theme.getColor(i));
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        View view = forkPanelViewBinding.divider1;
        int i6 = Theme.key_divider;
        view.setBackgroundColor(Theme.getColor(i6));
        forkPanelViewBinding.divider2.setBackgroundColor(Theme.getColor(i6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLayoutBottom$lambda$14$lambda$9(ForkPanelViewBinding this_with, SmartBotsView this$0, View view) {
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
    public static final void setupLayoutBottom$lambda$14$lambda$11(ForkPanelViewBinding this_with, SmartBotsView this$0, View view) {
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
    public static final void setupLayoutBottom$lambda$14$lambda$12(SmartBotsView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Listener listener = this$0.listener;
        if (listener != null) {
            listener.onShopClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLayoutBottom$lambda$14$lambda$13(SmartBotsView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Listener listener = this$0.listener;
        if (listener != null) {
            listener.onBotsSettingsClick();
        }
    }

    private final void moveToInitialPosition() {
        this.binding.viewpager.setCurrentItem(0, true);
    }

    private final void firePageSelectedEvent() {
        this.binding.viewpager.post(new Runnable() { // from class: com.iMe.ui.smartpanel.SmartBotsView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                SmartBotsView.firePageSelectedEvent$lambda$15(SmartBotsView.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void firePageSelectedEvent$lambda$15(SmartBotsView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateBaseIcons();
        this$0.updateIndicator();
    }
}
