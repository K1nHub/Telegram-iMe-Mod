package com.iMe.fork.p024ui.dialog;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.iMe.p031ui.drawer.DrawerSwitchableItem;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextCheckBoxCell;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: DrawerItemsSettingsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.DrawerItemsSettingsBottomSheet */
/* loaded from: classes4.dex */
public final class DrawerItemsSettingsBottomSheet extends BottomSheet {
    private final Lazy rootView$delegate;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerItemsSettingsBottomSheet(Context context) {
        super(context, false);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.dialog.DrawerItemsSettingsBottomSheet$rootView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout initRootView;
                initRootView = DrawerItemsSettingsBottomSheet.this.initRootView();
                return initRootView;
            }
        });
        this.rootView$delegate = lazy;
        setApplyBottomPadding(false);
        setCustomView(getRootView());
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initRootView() {
        int collectionSizeOrDefault;
        FrameLayout frameLayout = new FrameLayout(getContext());
        setTitle(LocaleController.getInternalString(C3473R.string.settings_interface_drawer_items), true);
        ScrollView scrollView = new ScrollView(frameLayout.getContext());
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        List<DrawerSwitchableItem> supportedItems = DrawerSwitchableItem.Companion.getSupportedItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedItems, 10);
        final ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (DrawerSwitchableItem drawerSwitchableItem : supportedItems) {
            final TextCheckBoxCell textCheckBoxCell = new TextCheckBoxCell(frameLayout.getContext(), true, false);
            textCheckBoxCell.setTag(drawerSwitchableItem);
            textCheckBoxCell.setTextAndCheck(drawerSwitchableItem.title(), SharedConfig.selectedDrawerItems.contains(drawerSwitchableItem), true);
            textCheckBoxCell.setBackground(Theme.getSelectorDrawable(false));
            textCheckBoxCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.DrawerItemsSettingsBottomSheet$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DrawerItemsSettingsBottomSheet.initRootView$lambda$13$lambda$4$lambda$2$lambda$1(TextCheckBoxCell.this, view);
                }
            });
            linearLayout.addView(textCheckBoxCell, LayoutHelper.createLinear(-1, 50));
            arrayList.add(textCheckBoxCell);
        }
        scrollView.addView(linearLayout);
        frameLayout.addView(scrollView, LayoutHelper.createFrame(-1, -2, 48, 0, 0, 0, 53));
        View view = new View(frameLayout.getContext());
        view.setBackgroundColor(Theme.getColor(Theme.key_divider));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, 1, 80, 0, 0, 0, 52));
        TextView textView = new TextView(frameLayout.getContext());
        textView.setGravity(17);
        String string = LocaleController.getString("Cancel", C3473R.string.Cancel);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Cancel\", R.string.Cancel)");
        Locale locale = Locale.ROOT;
        String upperCase = string.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView.setText(upperCase);
        textView.setTextSize(1, 14.0f);
        int i = Theme.key_dialogTextBlue2;
        textView.setTextColor(Theme.getColor(i));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setPadding(AndroidUtilities.m72dp(10), 0, AndroidUtilities.m72dp(10), 0);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.DrawerItemsSettingsBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DrawerItemsSettingsBottomSheet.initRootView$lambda$13$lambda$7$lambda$6(DrawerItemsSettingsBottomSheet.this, view2);
            }
        });
        TextView textView2 = new TextView(frameLayout.getContext());
        textView2.setGravity(17);
        String string2 = LocaleController.getString("Save", C3473R.string.Save);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Save\", R.string.Save)");
        String upperCase2 = string2.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView2.setText(upperCase2);
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor(i));
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setPadding(AndroidUtilities.m72dp(10), 0, AndroidUtilities.m72dp(10), 0);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.DrawerItemsSettingsBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DrawerItemsSettingsBottomSheet.initRootView$lambda$13$lambda$11$lambda$10(DrawerItemsSettingsBottomSheet.this, arrayList, view2);
            }
        });
        FrameLayout frameLayout2 = new FrameLayout(frameLayout.getContext());
        int m72dp = AndroidUtilities.m72dp(8);
        frameLayout2.setPadding(m72dp, m72dp, m72dp, m72dp);
        frameLayout2.addView(textView, LayoutHelper.createFrame(-2, 36, 8388659));
        frameLayout2.addView(textView2, LayoutHelper.createFrame(-2, 36, 8388661));
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 52, 80));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initRootView$lambda$13$lambda$4$lambda$2$lambda$1(TextCheckBoxCell this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setChecked(!this_apply.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initRootView$lambda$13$lambda$7$lambda$6(DrawerItemsSettingsBottomSheet this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initRootView$lambda$13$lambda$11$lambda$10(DrawerItemsSettingsBottomSheet this$0, List cells, View view) {
        int collectionSizeOrDefault;
        Set mutableSet;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(cells, "$cells");
        this$0.dismiss();
        ArrayList<TextCheckBoxCell> arrayList = new ArrayList();
        for (Object obj : cells) {
            if (((TextCheckBoxCell) obj).isChecked()) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (TextCheckBoxCell textCheckBoxCell : arrayList) {
            Object tag = textCheckBoxCell.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.iMe.ui.drawer.DrawerSwitchableItem");
            arrayList2.add((DrawerSwitchableItem) tag);
        }
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList2);
        SharedConfig.setSelectedDrawerItems(mutableSet);
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
    }
}
