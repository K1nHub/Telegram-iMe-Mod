package com.iMe.fork.p024ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.controller.ToolsController;
import com.iMe.fork.enums.SentMessageFont;
import com.iMe.fork.p024ui.fragment.SettingsToolsMessageActivity;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.C3541ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.RadioColorCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: SettingsToolsMessageActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity */
/* loaded from: classes4.dex */
public final class SettingsToolsMessageActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SettingsToolsMessageActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(SettingsToolsMessageActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(SettingsToolsMessageActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;", 0))};
    private int botHelpTranslateRow;
    private int combineMessagesRow;
    private int messageQuickTranslateRow;
    private int messagesSilentSendingRow;
    private final int position;
    private int rowCount;
    private int sendPopupTranslateRow;
    private int sentMessageTextFont;
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity$rootView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            FrameLayout initRootView;
            initRootView = SettingsToolsMessageActivity.this.initRootView();
            return initRootView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity$listView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final RecyclerListView invoke() {
            RecyclerListView initListView;
            initListView = SettingsToolsMessageActivity.this.initListView();
            return initListView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity$listAdapter$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final SettingsToolsMessageActivity.ListAdapter invoke() {
            return new SettingsToolsMessageActivity.ListAdapter();
        }
    }, 1, (Object) null);

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public SettingsToolsMessageActivity(int i) {
        this.position = i;
    }

    public final int getPosition() {
        return this.position;
    }

    static {
        new Companion(null);
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getListAdapter().notifyDataSetChanged();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3541ActionBar c3541ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3541ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, TextCell.class, TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText), new ThemeDescription(getListView(), 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initRootView() {
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        return frameLayout;
    }

    private final String getHint(int i) {
        if (i == this.sendPopupTranslateRow) {
            return LocaleController.getInternalString(C3473R.string.settings_tools_send_popup_translate_hint);
        }
        if (i == this.messagesSilentSendingRow) {
            return LocaleController.getInternalString(C3473R.string.settings_tools_silent_sending);
        }
        if (i == this.combineMessagesRow) {
            return LocaleController.getInternalString(C3473R.string.settings_tools_combine_messages_hint);
        }
        return null;
    }

    private final AlertDialog createChooseSentMessageFontDialog(Context context) {
        final AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getInternalString(C3473R.string.settings_tools_sent_message_font));
        builder.setNegativeButton(LocaleController.getInternalString(C3473R.string.common_cancel), null);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        SentMessageFont[] values = SentMessageFont.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            SentMessageFont sentMessageFont = values[i];
            RadioColorCell radioColorCell = new RadioColorCell(context);
            radioColorCell.setTag(sentMessageFont);
            ViewExtKt.setHorizontalPadding(radioColorCell, 4);
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue(sentMessageFont.getTitle(), getToolsController().getSelectedSentMessageFont() == sentMessageFont);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsToolsMessageActivity.createChooseSentMessageFontDialog$lambda$7$lambda$6$lambda$5(SettingsToolsMessageActivity.this, builder, view);
                }
            });
            linearLayout.addView(radioColorCell);
        }
        AlertDialog create = builder.setView(linearLayout).create();
        Intrinsics.checkNotNullExpressionValue(create, "builder.setView(linearLayout).create()");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createChooseSentMessageFontDialog$lambda$7$lambda$6$lambda$5(SettingsToolsMessageActivity this$0, AlertDialog.Builder builder, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(builder, "$builder");
        Intrinsics.checkNotNullParameter(view, "view");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.iMe.fork.enums.SentMessageFont");
        SentMessageFont sentMessageFont = (SentMessageFont) tag;
        if (sentMessageFont == this$0.getToolsController().getSelectedSentMessageFont()) {
            return;
        }
        ToolsController toolsController = this$0.getToolsController();
        toolsController.setSelectedSentMessageFont(sentMessageFont);
        toolsController.saveConfig();
        builder.getDismissRunnable().run();
    }

    private final void showHintDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(str);
        builder.setPositiveButton(LocaleController.getString("OK", C3473R.string.OK), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                SettingsToolsMessageActivity.initListView$lambda$12$lambda$11(SettingsToolsMessageActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$12$lambda$11(final SettingsToolsMessageActivity this$0, View view, final int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            String hint = this$0.getHint(i);
            if (hint != null && !((TextCheckCell) view).isInSwitch(f)) {
                this$0.showHintDialog(hint);
                return;
            }
            ((TextCheckCell) view).toggleCheckBox();
            if (i == this$0.messageQuickTranslateRow) {
                SharedConfig.setMessageQuickTranslateEnabled(!SharedConfig.isMessageQuickTranslateEnabled);
            } else if (i == this$0.botHelpTranslateRow) {
                SharedConfig.setBotHelpTranslateEnabled(!SharedConfig.isBotHelpTranslateEnabled);
            } else if (i == this$0.sendPopupTranslateRow) {
                SharedConfig.setTranslateInSendPopupEnabled(!SharedConfig.isTranslateInSendPopupEnabled);
            } else if (i == this$0.messagesSilentSendingRow) {
                ToolsController toolsController = this$0.getToolsController();
                toolsController.setSilentSendingEnabled(!toolsController.isSilentSendingEnabled());
                toolsController.saveConfig();
            } else if (i == this$0.combineMessagesRow) {
                SharedConfig.setCombineMessagesEnabled(!SharedConfig.isCombineMessagesEnabled);
            }
        } else if ((view instanceof TextSettingsCell) && i == this$0.sentMessageTextFont) {
            Activity parentActivity = this$0.getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            this$0.showDialog(this$0.createChooseSentMessageFontDialog(parentActivity), new DialogInterface.OnDismissListener() { // from class: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    SettingsToolsMessageActivity.initListView$lambda$12$lambda$11$lambda$10(SettingsToolsMessageActivity.this, i, dialogInterface);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$12$lambda$11$lambda$10(SettingsToolsMessageActivity this$0, int i, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListAdapter().notifyItemChanged(i);
    }

    private final void setupActionBar() {
        String internalString;
        C3541ActionBar c3541ActionBar = this.actionBar;
        c3541ActionBar.setBackButtonImage(C3473R.C3475drawable.ic_ab_back);
        c3541ActionBar.setAllowOverlayTitle(true);
        if (this.position == 0) {
            internalString = LocaleController.getInternalString(C3473R.string.settings_tools_translator);
        } else {
            internalString = LocaleController.getInternalString(C3473R.string.sending_settings_send);
        }
        c3541ActionBar.setTitle(internalString);
        c3541ActionBar.setActionBarMenuOnItemClick(new C3541ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3541ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SettingsToolsMessageActivity.this.finishFragment();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SettingsToolsMessageActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter() {
            updateRows();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == SettingsToolsMessageActivity.this.sentMessageTextFont ? IdFabric$ViewTypes.TEXT_SETTINGS_CELL : IdFabric$ViewTypes.TEXT_CHECK_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            TextCell textCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CELL) {
                TextCell textCell2 = new TextCell(SettingsToolsMessageActivity.this.getParentActivity());
                textCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textCell = textCell2;
            } else if (i == IdFabric$ViewTypes.TEXT_SETTINGS_CELL) {
                TextSettingsCell textSettingsCell = new TextSettingsCell(SettingsToolsMessageActivity.this.getContext());
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textCell = textSettingsCell;
            } else if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                View textCheckCell = new TextCheckCell(SettingsToolsMessageActivity.this.getContext());
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textCell = textCheckCell;
            } else {
                textCell = new ShadowSectionCell(SettingsToolsMessageActivity.this.getContext());
            }
            textCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean z = i < getItemCount() - 1;
            int itemViewType = holder.getItemViewType();
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                textCheckCell.setDrawSwitchDivider(SettingsToolsMessageActivity.this.hasHint(i));
                if (i != SettingsToolsMessageActivity.this.messageQuickTranslateRow) {
                    if (i != SettingsToolsMessageActivity.this.botHelpTranslateRow) {
                        if (i != SettingsToolsMessageActivity.this.sendPopupTranslateRow) {
                            if (i != SettingsToolsMessageActivity.this.messagesSilentSendingRow) {
                                if (i == SettingsToolsMessageActivity.this.combineMessagesRow) {
                                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3473R.string.settings_tools_combine_messages), SharedConfig.isCombineMessagesEnabled, z);
                                    return;
                                }
                                return;
                            }
                            textCheckCell.setTextAndCheck(LocaleController.getString("SendWithoutSound", C3473R.string.SendWithoutSound), SettingsToolsMessageActivity.this.getToolsController().isSilentSendingEnabled(), z);
                            return;
                        }
                        textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3473R.string.settings_tools_send_popup_translate), SharedConfig.isTranslateInSendPopupEnabled, z);
                        return;
                    }
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3473R.string.settings_tools_bot_help_translate), SharedConfig.isBotHelpTranslateEnabled, z);
                    return;
                }
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3473R.string.settings_tools_message_quick_translate), SharedConfig.isMessageQuickTranslateEnabled, z);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_SETTINGS_CELL && (view instanceof TextSettingsCell) && i == SettingsToolsMessageActivity.this.sentMessageTextFont) {
                ((TextSettingsCell) view).setTextAndValue(LocaleController.getInternalString(C3473R.string.settings_tools_sent_message_font), SettingsToolsMessageActivity.this.getToolsController().getSelectedSentMessageFont().getTitle(), z);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SettingsToolsMessageActivity.this.rowCount;
        }

        private final void updateRows() {
            SettingsToolsMessageActivity.this.messageQuickTranslateRow = -1;
            SettingsToolsMessageActivity.this.botHelpTranslateRow = -1;
            SettingsToolsMessageActivity.this.sendPopupTranslateRow = -1;
            SettingsToolsMessageActivity.this.messagesSilentSendingRow = -1;
            SettingsToolsMessageActivity.this.combineMessagesRow = -1;
            SettingsToolsMessageActivity.this.sentMessageTextFont = -1;
            SettingsToolsMessageActivity.this.rowCount = 0;
            int position = SettingsToolsMessageActivity.this.getPosition();
            if (position == 0) {
                SettingsToolsMessageActivity settingsToolsMessageActivity = SettingsToolsMessageActivity.this;
                int i = settingsToolsMessageActivity.rowCount;
                settingsToolsMessageActivity.rowCount = i + 1;
                settingsToolsMessageActivity.messageQuickTranslateRow = i;
                SettingsToolsMessageActivity settingsToolsMessageActivity2 = SettingsToolsMessageActivity.this;
                int i2 = settingsToolsMessageActivity2.rowCount;
                settingsToolsMessageActivity2.rowCount = i2 + 1;
                settingsToolsMessageActivity2.botHelpTranslateRow = i2;
                SettingsToolsMessageActivity settingsToolsMessageActivity3 = SettingsToolsMessageActivity.this;
                int i3 = settingsToolsMessageActivity3.rowCount;
                settingsToolsMessageActivity3.rowCount = i3 + 1;
                settingsToolsMessageActivity3.sendPopupTranslateRow = i3;
            } else if (position != 2) {
            } else {
                SettingsToolsMessageActivity settingsToolsMessageActivity4 = SettingsToolsMessageActivity.this;
                int i4 = settingsToolsMessageActivity4.rowCount;
                settingsToolsMessageActivity4.rowCount = i4 + 1;
                settingsToolsMessageActivity4.messagesSilentSendingRow = i4;
                SettingsToolsMessageActivity settingsToolsMessageActivity5 = SettingsToolsMessageActivity.this;
                int i5 = settingsToolsMessageActivity5.rowCount;
                settingsToolsMessageActivity5.rowCount = i5 + 1;
                settingsToolsMessageActivity5.combineMessagesRow = i5;
                SettingsToolsMessageActivity settingsToolsMessageActivity6 = SettingsToolsMessageActivity.this;
                int i6 = settingsToolsMessageActivity6.rowCount;
                settingsToolsMessageActivity6.rowCount = i6 + 1;
                settingsToolsMessageActivity6.sentMessageTextFont = i6;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hasHint(int i) {
        return getHint(i) != null;
    }

    /* compiled from: SettingsToolsMessageActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.SettingsToolsMessageActivity$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
