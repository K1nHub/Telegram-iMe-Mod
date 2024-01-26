package com.iMe.fork.p023ui.dialog;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p023ui.dialog.ChatLanguageSettingsBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.NotificationsCheckCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: ChatLanguageSettingsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet */
/* loaded from: classes3.dex */
public final class ChatLanguageSettingsBottomSheet extends BottomSheet {
    private int autoTranslateRow;
    private final Lazy bottomButtonsContainer$delegate;
    private boolean isAutoTranslateEnabled;
    private BottomSheet languageSelector;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final Lazy newSettings$delegate;
    private final ChatActivity parentFragment;
    private final Lazy rootView$delegate;
    private int rowCount;
    private int textHeader;
    private int textIn;
    private int textOut;
    private final List<TranslationLanguageUiModel> textTranslateLanguages;
    private final Callbacks$Callback2<DialogTranslationSettings, Boolean> translationSettingsDelegate;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithTouchOutside() {
        return false;
    }

    public final ChatActivity getParentFragment() {
        return this.parentFragment;
    }

    public final List<TranslationLanguageUiModel> getTextTranslateLanguages() {
        return this.textTranslateLanguages;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatLanguageSettingsBottomSheet(ChatActivity parentFragment, List<TranslationLanguageUiModel> textTranslateLanguages, final DialogTranslationSettings translationSettings, Callbacks$Callback2<DialogTranslationSettings, Boolean> translationSettingsDelegate) {
        super(parentFragment.getParentActivity(), false);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        Intrinsics.checkNotNullParameter(textTranslateLanguages, "textTranslateLanguages");
        Intrinsics.checkNotNullParameter(translationSettings, "translationSettings");
        Intrinsics.checkNotNullParameter(translationSettingsDelegate, "translationSettingsDelegate");
        this.parentFragment = parentFragment;
        this.textTranslateLanguages = textTranslateLanguages;
        this.translationSettingsDelegate = translationSettingsDelegate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogTranslationSettings>() { // from class: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet$newSettings$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DialogTranslationSettings invoke() {
                DialogTranslationSettings copy;
                copy = r0.copy((r20 & 1) != 0 ? r0.isInTextTranslateEnabled : false, (r20 & 2) != 0 ? r0.inTextTranslateLangCode : null, (r20 & 4) != 0 ? r0.isOutTextTranslateEnabled : false, (r20 & 8) != 0 ? r0.outTextTranslateLangCode : null, (r20 & 16) != 0 ? r0.dialogId : 0L, (r20 & 32) != 0 ? r0.isEnabled : false, (r20 & 64) != 0 ? r0.incomingTargetLanguageCode : null, (r20 & 128) != 0 ? DialogTranslationSettings.this.outgoingTargetLanguageCode : null);
                return copy;
            }
        });
        this.newSettings$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet$rootView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initRootView;
                initRootView = ChatLanguageSettingsBottomSheet.this.initRootView();
                return initRootView;
            }
        });
        this.rootView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = ChatLanguageSettingsBottomSheet.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ChatLanguageSettingsBottomSheet.ListAdapter invoke() {
                return new ChatLanguageSettingsBottomSheet.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet$bottomButtonsContainer$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout initBottomButtonsContainer;
                initBottomButtonsContainer = ChatLanguageSettingsBottomSheet.this.initBottomButtonsContainer();
                return initBottomButtonsContainer;
            }
        });
        this.bottomButtonsContainer$delegate = lazy5;
        setApplyTopPadding(false);
        setApplyBottomPadding(false);
        setCustomView(getRootView());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogTranslationSettings getNewSettings() {
        return (DialogTranslationSettings) this.newSettings$delegate.getValue();
    }

    private final LinearLayout getRootView() {
        return (LinearLayout) this.rootView$delegate.getValue();
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    private final FrameLayout getBottomButtonsContainer() {
        return (FrameLayout) this.bottomButtonsContainer$delegate.getValue();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        BottomSheet bottomSheet = this.languageSelector;
        if (bottomSheet != null) {
            bottomSheet.dismiss();
        }
        this.languageSelector = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initRootView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        linearLayout.addView(getListView());
        linearLayout.addView(getBottomButtonsContainer(), LayoutHelper.createLinear(-1, 52));
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getContext());
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setOverScrollMode(2);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet$$ExternalSyntheticLambda2
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
                ChatLanguageSettingsBottomSheet.initListView$lambda$2$lambda$1(ChatLanguageSettingsBottomSheet.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$2$lambda$1(ChatLanguageSettingsBottomSheet this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof NotificationsCheckCell) {
            NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
            if (notificationsCheckCell.isInSwitch(f)) {
                notificationsCheckCell.setChecked(!notificationsCheckCell.isChecked());
                if (i == this$0.textIn) {
                    this$0.getNewSettings().setInTextTranslateEnabled(notificationsCheckCell.isChecked());
                    return;
                } else {
                    this$0.getNewSettings().setOutTextTranslateEnabled(notificationsCheckCell.isChecked());
                    return;
                }
            }
            this$0.showLanguageSelector(i);
        } else if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.setChecked(!textCheckCell.isChecked());
            this$0.isAutoTranslateEnabled = !this$0.isAutoTranslateEnabled;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initBottomButtonsContainer() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        int m107dp = AndroidUtilities.m107dp(8);
        frameLayout.setPadding(m107dp, m107dp, m107dp, m107dp);
        frameLayout.addView(createBottomButton(true), LayoutHelper.createFrame(-2, 36, 8388611));
        frameLayout.addView(createBottomButton(false), LayoutHelper.createFrame(-2, 36, 8388613));
        return frameLayout;
    }

    private final TextView createBottomButton(final boolean z) {
        String upperCase;
        TextView textView = new TextView(getContext());
        ViewExtKt.setHorizontalPadding(textView, 10);
        textView.setGravity(17);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        if (z) {
            String string = LocaleController.getString("Cancel", C3632R.string.Cancel);
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"Cancel\", R.string.Cancel)");
            upperCase = string.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        } else {
            String string2 = LocaleController.getString("Save", C3632R.string.Save);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Save\", R.string.Save)");
            upperCase = string2.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        }
        textView.setText(upperCase);
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatLanguageSettingsBottomSheet.createBottomButton$lambda$5$lambda$4(z, this, view);
            }
        });
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createBottomButton$lambda$5$lambda$4(boolean z, ChatLanguageSettingsBottomSheet this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!z) {
            this$0.translationSettingsDelegate.invoke(this$0.getNewSettings(), Boolean.valueOf(this$0.isAutoTranslateEnabled));
        }
        this$0.dismiss();
    }

    private final void showLanguageSelector(final int i) {
        List mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.textTranslateLanguages);
        if (i != this.textOut) {
            String internalString = LocaleController.getInternalString(C3632R.string.language_settings_app_language);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…ge_settings_app_language)");
            mutableList.add(0, new TranslationLanguageUiModel(null, internalString));
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        SelectLanguageBottomSheet selectLanguageBottomSheet = new SelectLanguageBottomSheet(context, mutableList, getLangCode(i), new Callbacks$Callback1() { // from class: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ChatLanguageSettingsBottomSheet.showLanguageSelector$lambda$6(i, this, (String) obj);
            }
        });
        selectLanguageBottomSheet.show();
        this.languageSelector = selectLanguageBottomSheet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLanguageSelector$lambda$6(int i, ChatLanguageSettingsBottomSheet this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == this$0.textIn) {
            this$0.getNewSettings().setInTextTranslateLangCode(str);
        } else {
            DialogTranslationSettings newSettings = this$0.getNewSettings();
            Intrinsics.checkNotNull(str);
            newSettings.setOutTextTranslateLangCode(str);
        }
        this$0.getListAdapter().notifyItemChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getLangCode(int i) {
        return i == this.textIn ? getNewSettings().getInTextTranslateLangCode() : getNewSettings().getOutTextTranslateLangCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChatLanguageSettingsBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.ChatLanguageSettingsBottomSheet$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            ChatLanguageSettingsBottomSheet.this.autoTranslateRow = -1;
            ChatLanguageSettingsBottomSheet.this.rowCount = 0;
            ChatLanguageSettingsBottomSheet chatLanguageSettingsBottomSheet = ChatLanguageSettingsBottomSheet.this;
            int i = chatLanguageSettingsBottomSheet.rowCount;
            chatLanguageSettingsBottomSheet.rowCount = i + 1;
            chatLanguageSettingsBottomSheet.textHeader = i;
            ChatLanguageSettingsBottomSheet chatLanguageSettingsBottomSheet2 = ChatLanguageSettingsBottomSheet.this;
            int i2 = chatLanguageSettingsBottomSheet2.rowCount;
            chatLanguageSettingsBottomSheet2.rowCount = i2 + 1;
            chatLanguageSettingsBottomSheet2.textIn = i2;
            ChatLanguageSettingsBottomSheet chatLanguageSettingsBottomSheet3 = ChatLanguageSettingsBottomSheet.this;
            int i3 = chatLanguageSettingsBottomSheet3.rowCount;
            chatLanguageSettingsBottomSheet3.rowCount = i3 + 1;
            chatLanguageSettingsBottomSheet3.textOut = i3;
            if (ChatLanguageSettingsBottomSheet.this.getParentFragment().getMessagesController().getTranslateController().isDialogTranslatable(ChatLanguageSettingsBottomSheet.this.getParentFragment().getDialogId()) && ChatLanguageSettingsBottomSheet.this.getParentFragment().getMessagesController().getTranslateController().isTranslateDialogHidden(ChatLanguageSettingsBottomSheet.this.getParentFragment().getDialogId())) {
                ChatLanguageSettingsBottomSheet chatLanguageSettingsBottomSheet4 = ChatLanguageSettingsBottomSheet.this;
                int i4 = chatLanguageSettingsBottomSheet4.rowCount;
                chatLanguageSettingsBottomSheet4.rowCount = i4 + 1;
                chatLanguageSettingsBottomSheet4.autoTranslateRow = i4;
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return holder.getItemViewType() == IdFabric$ViewTypes.NOTIFICATIONS_CHECK_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatLanguageSettingsBottomSheet.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == ChatLanguageSettingsBottomSheet.this.textHeader ? IdFabric$ViewTypes.HEADER_CELL : i == ChatLanguageSettingsBottomSheet.this.autoTranslateRow ? IdFabric$ViewTypes.TEXT_CHECK_CELL : IdFabric$ViewTypes.NOTIFICATIONS_CHECK_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout textCheckCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.HEADER_CELL) {
                textCheckCell = new HeaderCell(ChatLanguageSettingsBottomSheet.this.getContext());
            } else {
                textCheckCell = i == IdFabric$ViewTypes.TEXT_CHECK_CELL ? new TextCheckCell(ChatLanguageSettingsBottomSheet.this.getContext()) : new NotificationsCheckCell(ChatLanguageSettingsBottomSheet.this.getContext());
            }
            textCheckCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCheckCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Object obj;
            String formatStringInternal;
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.HEADER_CELL && (view instanceof HeaderCell)) {
                ((HeaderCell) view).setText(LocaleController.getInternalString(C3632R.string.language_settings_text_messages));
                return;
            }
            boolean z = false;
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                ((TextCheckCell) view).setTextAndCheck(LocaleController.getString("ShowTranslateChatButton", C3632R.string.ShowTranslateChatButton), ChatLanguageSettingsBottomSheet.this.isAutoTranslateEnabled, false);
            } else if (itemViewType == IdFabric$ViewTypes.NOTIFICATIONS_CHECK_CELL && (view instanceof NotificationsCheckCell)) {
                String langCode = ChatLanguageSettingsBottomSheet.this.getLangCode(i);
                String internalString = LocaleController.getInternalString(i == ChatLanguageSettingsBottomSheet.this.textIn ? C3632R.string.language_settings_in_text_translate : C3632R.string.language_settings_out_text_translate);
                if (langCode == null) {
                    formatStringInternal = LocaleController.getInternalString(C3632R.string.language_settings_app_language);
                } else {
                    int i2 = C3632R.string.language_settings_selected_language;
                    Object[] objArr = new Object[1];
                    Iterator<T> it = ChatLanguageSettingsBottomSheet.this.getTextTranslateLanguages().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        if (Intrinsics.areEqual(((TranslationLanguageUiModel) obj).getLanguageCode(), langCode)) {
                            break;
                        }
                    }
                    Intrinsics.checkNotNull(obj);
                    objArr[0] = ((TranslationLanguageUiModel) obj).getDisplayLanguage();
                    formatStringInternal = LocaleController.formatStringInternal(i2, objArr);
                }
                boolean isInTextTranslateEnabled = i == ChatLanguageSettingsBottomSheet.this.textIn ? ChatLanguageSettingsBottomSheet.this.getNewSettings().isInTextTranslateEnabled() : ChatLanguageSettingsBottomSheet.this.getNewSettings().isOutTextTranslateEnabled();
                NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
                if (i != ChatLanguageSettingsBottomSheet.this.textOut || ChatLanguageSettingsBottomSheet.this.autoTranslateRow != -1) {
                    z = true;
                }
                notificationsCheckCell.setTextAndValueAndCheck(internalString, formatStringInternal, isInTextTranslateEnabled, z);
            }
        }
    }
}
