package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.iMe.fork.enums.TemplatesSortingType;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.BotCommandsMenuView;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: TemplatesHeaderCell.kt */
/* renamed from: com.iMe.fork.ui.view.TemplatesHeaderCell */
/* loaded from: classes3.dex */
public final class TemplatesHeaderCell extends LinearLayout {
    private final Lazy createButton$delegate;
    private final Lazy headerTextView$delegate;
    private final Lazy sortButton$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplatesHeaderCell(Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new TemplatesHeaderCell$headerTextView$2(this));
        this.headerTextView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new TemplatesHeaderCell$sortButton$2(this));
        this.sortButton$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new TemplatesHeaderCell$createButton$2(this));
        this.createButton$delegate = lazy3;
        int m54dp = AndroidUtilities.m54dp(8);
        setPadding(m54dp, m54dp, m54dp, m54dp);
        setGravity(16);
        addView(getHeaderTextView(), LayoutHelper.createLinear(0, -2, 1.0f, 16, 8, 0, 0, 0));
        addView(getSortButton(), LayoutHelper.createLinear(36, 36, 16, 8, 0, 8, 0));
        addView(getCreateButton(), LayoutHelper.createLinear(-2, 36));
        updateSortingMenu();
    }

    private final TextView getHeaderTextView() {
        return (TextView) this.headerTextView$delegate.getValue();
    }

    private final ActionBarMenuItem getSortButton() {
        return (ActionBarMenuItem) this.sortButton$delegate.getValue();
    }

    private final TextView getCreateButton() {
        return (TextView) this.createButton$delegate.getValue();
    }

    public final void bind(int i, final BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate templatesDelegate) {
        Intrinsics.checkNotNullParameter(templatesDelegate, "templatesDelegate");
        TextView headerTextView = getHeaderTextView();
        headerTextView.setText(LocaleController.getInternalString(i > 0 ? C3290R.string.chat_templates : C3290R.string.chat_templates_list_header));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        headerTextView.setTextColor(Theme.getColor(i2));
        ActionBarMenuItem sortButton = getSortButton();
        sortButton.setVisibility(i > 1 ? 0 : 8);
        sortButton.setBackground(Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m54dp(48), 0, Theme.getColor(Theme.key_listSelector)));
        sortButton.setIconColor(Theme.getColor(i2));
        TextView createButton = getCreateButton();
        ViewExtKt.setRippleBackground(createButton, true);
        createButton.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.TemplatesHeaderCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TemplatesHeaderCell.bind$lambda$3$lambda$2(BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate.this, view);
            }
        });
        createButton.setTextColor(Theme.getColor(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$3$lambda$2(BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate templatesDelegate, View view) {
        Intrinsics.checkNotNullParameter(templatesDelegate, "$templatesDelegate");
        templatesDelegate.didPressOpenTemplates(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initHeaderTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.withMediumTypeface(textView);
        textView.setTextSize(1, 16.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarMenuItem initSortButton() {
        final ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(getContext(), null, 0, Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        actionBarMenuItem.setAdditionalYOffset(-AndroidUtilities.m54dp(10));
        actionBarMenuItem.setAdditionalXOffset(AndroidUtilities.m54dp(10));
        actionBarMenuItem.setLongClickEnabled(false);
        actionBarMenuItem.setShowSubmenuByMove(false);
        actionBarMenuItem.setShowedFromBottom(true);
        actionBarMenuItem.setSubMenuOpenSide(2);
        actionBarMenuItem.setIcon(SharedConfig.selectedTemplatesSortingType.getIconResId());
        actionBarMenuItem.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.fork.ui.view.TemplatesHeaderCell$$ExternalSyntheticLambda2
            @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                TemplatesHeaderCell.initSortButton$lambda$7$lambda$5(ActionBarMenuItem.this, this, i);
            }
        });
        actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.TemplatesHeaderCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TemplatesHeaderCell.initSortButton$lambda$7$lambda$6(ActionBarMenuItem.this, view);
            }
        });
        return actionBarMenuItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initSortButton$lambda$7$lambda$5(ActionBarMenuItem this_apply, TemplatesHeaderCell this$0, int i) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TemplatesSortingType templatesSortingType = TemplatesSortingType.values()[i];
        SharedConfig.setSelectedTemplatesSortingType(templatesSortingType);
        this_apply.setIcon(templatesSortingType.getIconResId());
        this$0.updateSortingMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initSortButton$lambda$7$lambda$6(ActionBarMenuItem this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initCreateButton() {
        TextView textView = new TextView(getContext());
        ViewExtKt.withMediumTypeface(textView);
        ViewExtKt.setHorizontalPadding(textView, 16);
        String string = LocaleController.getString("Create", C3290R.string.Create);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Create\", R.string.Create)");
        String upperCase = string.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView.setText(upperCase);
        textView.setGravity(17);
        textView.setTextSize(1, 16.0f);
        return textView;
    }

    private final void updateSortingMenu() {
        getSortButton().removeAllSubItems();
        TemplatesSortingType[] values = TemplatesSortingType.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            TemplatesSortingType templatesSortingType = values[i];
            boolean z = SharedConfig.selectedTemplatesSortingType == templatesSortingType;
            getSortButton().addSubItem(templatesSortingType.ordinal(), z ? 0 : templatesSortingType.getIconResId(), LocaleController.getInternalString(templatesSortingType.getNameResId()), z).setChecked(z);
        }
    }

    /* compiled from: TemplatesHeaderCell.kt */
    /* renamed from: com.iMe.fork.ui.view.TemplatesHeaderCell$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
