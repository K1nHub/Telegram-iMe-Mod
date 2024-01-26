package com.fxn;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.fxn.bubbletabbar.R$dimen;
import com.fxn.bubbletabbar.R$styleable;
import com.fxn.parser.MenuItem;
import com.fxn.parser.MenuParser;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BubbleTabBar.kt */
/* loaded from: classes.dex */
public final class BubbleTabBar extends LinearLayout {
    private HashMap<Integer, Boolean> badgeVisibleValues;
    private int custom_fontParam;
    private int disabled_icon_colorParam;
    private float horizontal_paddingParam;
    private float icon_paddingParam;
    private float icon_sizeParam;
    private List<MenuItem> menuItems;
    private int menuResource;
    private Bubble oldBubble;
    private OnBubbleClickListener onBubbleClickListener;
    private int tabContainerBackground;
    private float title_sizeParam;
    private float vertical_paddingParam;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BubbleTabBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ BubbleTabBar(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BubbleTabBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        List<MenuItem> emptyList;
        Intrinsics.checkNotNullParameter(context, "context");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.menuItems = emptyList;
        this.disabled_icon_colorParam = -7829368;
        this.badgeVisibleValues = new HashMap<>();
        new HashMap();
        setOrientation(0);
        setGravity(17);
        init(context, attributeSet);
    }

    public final void addBubbleListener(OnBubbleClickListener onBubbleClickListener) {
        Intrinsics.checkNotNullParameter(onBubbleClickListener, "onBubbleClickListener");
        this.onBubbleClickListener = onBubbleClickListener;
    }

    public final void setSelectedById(int i, boolean z) {
        OnBubbleClickListener onBubbleClickListener;
        Bubble bubble = (Bubble) findViewById(i);
        if (bubble == null) {
            return;
        }
        Bubble bubble2 = this.oldBubble;
        if (!(bubble2 != null && bubble2.getId() == i)) {
            bubble.setSelected(!bubble.isSelected());
            Bubble bubble3 = this.oldBubble;
            if (bubble3 != null) {
                bubble3.setSelected(false);
            }
        } else {
            bubble.setSelected(true);
        }
        this.oldBubble = bubble;
        if (z && (onBubbleClickListener = this.onBubbleClickListener) != null) {
            onBubbleClickListener.onBubbleClick(i);
        }
        invalidate();
    }

    public final void setDisableIconColor(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.disabled_icon_colorParam = i;
        reDraw(context);
    }

    public final void setTabContainerBackground(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.tabContainerBackground = i;
        reDraw(context);
    }

    public final void setMenu(List<MenuItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.menuItems = items;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        reDraw(context);
    }

    private final void reDraw(Context context) {
        if (!this.menuItems.isEmpty()) {
            configureMenu(this.menuItems);
            return;
        }
        int i = this.menuResource;
        if (i >= 0) {
            setMenuResource(context, i);
        }
    }

    private final void init(Context context, AttributeSet attributeSet) {
        setOrientation(0);
        setGravity(16);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.BubbleTabBar, 0, 0);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.theme.obtainStyl…eable.BubbleTabBar, 0, 0)");
            try {
                this.menuResource = obtainStyledAttributes.getResourceId(R$styleable.BubbleTabBar_bubbletab_menuResource, -1);
                this.disabled_icon_colorParam = obtainStyledAttributes.getColor(R$styleable.BubbleTabBar_bubbletab_disabled_icon_color, -7829368);
                this.custom_fontParam = obtainStyledAttributes.getResourceId(R$styleable.BubbleTabBar_bubbletab_custom_font, 0);
                this.icon_paddingParam = obtainStyledAttributes.getDimension(R$styleable.BubbleTabBar_bubbletab_icon_padding, getResources().getDimension(R$dimen.bubble_icon_padding));
                this.horizontal_paddingParam = obtainStyledAttributes.getDimension(R$styleable.BubbleTabBar_bubbletab_horizontal_padding, getResources().getDimension(R$dimen.bubble_horizontal_padding));
                this.vertical_paddingParam = obtainStyledAttributes.getDimension(R$styleable.BubbleTabBar_bubbletab_vertical_padding, getResources().getDimension(R$dimen.bubble_vertical_padding));
                int i = R$styleable.BubbleTabBar_bubbletab_icon_size;
                Resources resources = getResources();
                int i2 = R$dimen.bubble_icon_size;
                this.icon_sizeParam = obtainStyledAttributes.getDimension(i, resources.getDimension(i2));
                this.title_sizeParam = obtainStyledAttributes.getDimension(R$styleable.BubbleTabBar_bubbletab_title_size, getResources().getDimension(i2));
                if (!this.menuItems.isEmpty()) {
                    configureMenu(this.menuItems);
                } else {
                    int i3 = this.menuResource;
                    if (i3 >= 0) {
                        setMenuResource(context, i3);
                    }
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    private final void setMenuResource(Context context, int i) {
        configureMenu(new MenuParser(context).parse(i));
    }

    private final void configureMenu(List<MenuItem> list) {
        boolean booleanValue;
        removeAllViews();
        for (MenuItem menuItem : list) {
            if (menuItem.getId() == 0) {
                throw new ExceptionInInitializerError("Id is not added in menu item");
            }
            int i = this.tabContainerBackground;
            if (i != 0) {
                menuItem.setTabBackground(i);
            } else {
                menuItem.getIconColor();
            }
            Boolean bool = this.badgeVisibleValues.get(Integer.valueOf(menuItem.getId()));
            if (bool == null) {
                booleanValue = false;
            } else {
                Intrinsics.checkNotNullExpressionValue(bool, "badgeVisibleValues[id] ?: false");
                booleanValue = bool.booleanValue();
            }
            menuItem.setBadgeVisible(booleanValue);
            menuItem.setHorizontal_padding(this.horizontal_paddingParam);
            menuItem.setVertical_padding(this.vertical_paddingParam);
            menuItem.setIcon_size(this.icon_sizeParam);
            menuItem.setIcon_padding(this.icon_paddingParam);
            menuItem.setCustom_font(this.custom_fontParam);
            menuItem.setDisabled_icon_color(this.disabled_icon_colorParam);
            menuItem.setTitle_size(this.title_sizeParam);
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            Bubble bubble = new Bubble(context, menuItem);
            if (menuItem.getChecked()) {
                bubble.setSelected(true);
                this.oldBubble = bubble;
            }
            bubble.setOnClickListener(new View.OnClickListener() { // from class: com.fxn.BubbleTabBar$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BubbleTabBar.configureMenu$lambda$6$lambda$5$lambda$4(BubbleTabBar.this, view);
                }
            });
            addView(bubble);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void configureMenu$lambda$6$lambda$5$lambda$4(com.fxn.BubbleTabBar r5, android.view.View r6) {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            int r0 = r6.getId()
            com.fxn.OnBubbleClickListener r1 = r5.onBubbleClickListener
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            com.fxn.Bubble r1 = r5.oldBubble
            if (r1 == 0) goto L1f
            int r4 = r6.getId()
            int r1 = r1.getId()
            if (r4 != r1) goto L1f
            r1 = r2
            goto L20
        L1f:
            r1 = r3
        L20:
            if (r1 != 0) goto L30
            com.fxn.OnBubbleClickListener r1 = r5.onBubbleClickListener
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            int r4 = r6.getId()
            boolean r1 = r1.onBubbleClick(r4)
            goto L31
        L30:
            r1 = r3
        L31:
            if (r1 == 0) goto L5f
            com.fxn.Bubble r1 = r5.oldBubble
            java.lang.String r4 = "null cannot be cast to non-null type com.fxn.Bubble"
            if (r1 == 0) goto L58
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            int r1 = r1.getId()
            if (r1 == r0) goto L58
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6, r4)
            r0 = r6
            com.fxn.Bubble r0 = (com.fxn.Bubble) r0
            boolean r1 = r0.isSelected()
            r1 = r1 ^ r2
            r0.setSelected(r1)
            com.fxn.Bubble r0 = r5.oldBubble
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            r0.setSelected(r3)
        L58:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6, r4)
            com.fxn.Bubble r6 = (com.fxn.Bubble) r6
            r5.oldBubble = r6
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fxn.BubbleTabBar.configureMenu$lambda$6$lambda$5$lambda$4(com.fxn.BubbleTabBar, android.view.View):void");
    }
}
