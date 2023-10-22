package org.telegram.p042ui;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.AlertDialog;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
import org.telegram.p042ui.Cells.HeaderCell;
import org.telegram.p042ui.Cells.LanguageCell;
import org.telegram.p042ui.Cells.ShadowSectionCell;
import org.telegram.p042ui.Cells.TextCheckCell;
import org.telegram.p042ui.Cells.TextInfoPrivacyCell;
import org.telegram.p042ui.Cells.TextRadioCell;
import org.telegram.p042ui.Cells.TextSettingsCell;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.EmptyTextProgressView;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
/* renamed from: org.telegram.ui.LanguageSelectActivity */
/* loaded from: classes5.dex */
public class LanguageSelectActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private ArrayList<LocaleController.LocaleInfo> catalogLanguages;
    private int customScreenType;
    private EmptyTextProgressView emptyView;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private Callbacks$Callback1<Integer> onLanguageSelected;
    private ActionBarMenuItem searchItem;
    private ListAdapter searchListViewAdapter;
    private ArrayList<LocaleController.LocaleInfo> searchResult;
    private boolean searchWas;
    private boolean searching;
    private int selectedLanguageId;
    private ArrayList<LocaleController.LocaleInfo> sortedLanguages;
    private int translateSettingsBackgroundHeight;
    private ArrayList<LocaleController.LocaleInfo> unofficialLanguages;

    public LanguageSelectActivity() {
        this(null);
    }

    public LanguageSelectActivity(Bundle bundle) {
        super(bundle);
    }

    public static LanguageSelectActivity newInstanceForCatalog(int i, ArrayList<LocaleController.LocaleInfo> arrayList, Callbacks$Callback1<Integer> callbacks$Callback1) {
        Bundle bundle = new Bundle();
        bundle.putInt("custom_screen_type", IdFabric$CustomType.LANGUAGE_SELECT_CATALOG);
        LanguageSelectActivity languageSelectActivity = new LanguageSelectActivity(bundle);
        languageSelectActivity.selectedLanguageId = i;
        languageSelectActivity.catalogLanguages = arrayList;
        languageSelectActivity.onLanguageSelected = callbacks$Callback1;
        return languageSelectActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCatalogType() {
        return this.customScreenType == IdFabric$CustomType.LANGUAGE_SELECT_CATALOG;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        Bundle bundle = this.arguments;
        if (bundle != null) {
            this.customScreenType = bundle.getInt("custom_screen_type", 0);
        }
        fillLanguages();
        LocaleController.getInstance().loadRemoteLanguages(this.currentAccount, false);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.suggestedLangpack);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.suggestedLangpack);
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C3630R.C3632drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        if (isCatalogType()) {
            this.actionBar.setTitle(LocaleController.getInternalString(C3630R.string.language_select_startup));
        } else {
            this.actionBar.setTitle(LocaleController.getString("Language", C3630R.string.Language));
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3702ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.LanguageSelectActivity.1
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    LanguageSelectActivity.this.finishFragment();
                }
            }
        });
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C3630R.C3632drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.LanguageSelectActivity.2
            @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                LanguageSelectActivity.this.searching = true;
            }

            @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                LanguageSelectActivity.this.search(null);
                LanguageSelectActivity.this.searching = false;
                LanguageSelectActivity.this.searchWas = false;
                if (LanguageSelectActivity.this.listView != null) {
                    LanguageSelectActivity.this.emptyView.setVisibility(8);
                    LanguageSelectActivity.this.listView.setAdapter(LanguageSelectActivity.this.listAdapter);
                }
            }

            @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                String obj = editText.getText().toString();
                LanguageSelectActivity.this.search(obj);
                if (obj.length() != 0) {
                    LanguageSelectActivity.this.searchWas = true;
                    if (LanguageSelectActivity.this.listView != null) {
                        LanguageSelectActivity.this.listView.setAdapter(LanguageSelectActivity.this.searchListViewAdapter);
                        return;
                    }
                    return;
                }
                LanguageSelectActivity.this.searching = false;
                LanguageSelectActivity.this.searchWas = false;
                if (LanguageSelectActivity.this.listView != null) {
                    LanguageSelectActivity.this.emptyView.setVisibility(8);
                    LanguageSelectActivity.this.listView.setAdapter(LanguageSelectActivity.this.listAdapter);
                }
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString("Search", C3630R.string.Search));
        this.listAdapter = new ListAdapter(context, false);
        this.searchListViewAdapter = new ListAdapter(context, true);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        FrameLayout frameLayout2 = (FrameLayout) this.fragmentView;
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context);
        this.emptyView = emptyTextProgressView;
        emptyTextProgressView.setText(LocaleController.getString("NoResult", C3630R.string.NoResult));
        this.emptyView.showTextView();
        this.emptyView.setShowAtCenter(true);
        frameLayout2.addView(this.emptyView, LayoutHelper.createFrame(-1, -1));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.LanguageSelectActivity.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p042ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                if (getAdapter() == LanguageSelectActivity.this.listAdapter && getItemAnimator() != null && getItemAnimator().isRunning()) {
                    int color = Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider);
                    drawItemBackground(canvas, 0, LanguageSelectActivity.this.translateSettingsBackgroundHeight, color);
                    drawSectionBackground(canvas, 1, 2, color);
                }
                super.dispatchDraw(canvas);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setEmptyView(this.emptyView);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setAdapter(this.listAdapter);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.LanguageSelectActivity.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                LanguageSelectActivity.this.listView.invalidate();
                LanguageSelectActivity.this.listView.updateSelector();
            }
        };
        defaultItemAnimator.setDurations(400L);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.listView.setItemAnimator(defaultItemAnimator);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda10
            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                LanguageSelectActivity.this.lambda$createView$4(view, i);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda11
            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                boolean lambda$createView$6;
                lambda$createView$6 = LanguageSelectActivity.this.lambda$createView$6(view, i);
                return lambda$createView$6;
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.LanguageSelectActivity.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i == 1) {
                    AndroidUtilities.hideKeyboard(LanguageSelectActivity.this.getParentActivity().getCurrentFocus());
                }
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:125:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001a A[Catch: Exception -> 0x0210, TryCatch #0 {Exception -> 0x0210, blocks: (B:2:0x0000, B:4:0x0007, B:6:0x000d, B:11:0x0017, B:13:0x001a, B:17:0x0023, B:26:0x007c, B:28:0x0082, B:34:0x008e, B:38:0x0099, B:39:0x009c, B:41:0x00a4, B:43:0x00b2, B:45:0x00b6, B:46:0x00b9, B:48:0x00be, B:50:0x00c3, B:51:0x00ca, B:19:0x0043, B:21:0x004a, B:23:0x0054, B:25:0x005f, B:53:0x00d1, B:55:0x00d5, B:57:0x00de, B:59:0x00e4, B:61:0x00e8, B:64:0x00ee, B:68:0x00fb, B:70:0x0101, B:73:0x010b, B:75:0x0111, B:79:0x011a, B:81:0x0127, B:92:0x0163, B:94:0x0169, B:96:0x0184, B:99:0x018f, B:101:0x019b, B:102:0x01a0, B:104:0x01b6, B:105:0x01be, B:107:0x01d1, B:109:0x01d7, B:111:0x01e1, B:113:0x01e9, B:114:0x01ec, B:82:0x0130, B:85:0x013a, B:87:0x0142, B:88:0x014b, B:90:0x0153, B:91:0x015b), top: B:120:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008e A[Catch: Exception -> 0x0210, TryCatch #0 {Exception -> 0x0210, blocks: (B:2:0x0000, B:4:0x0007, B:6:0x000d, B:11:0x0017, B:13:0x001a, B:17:0x0023, B:26:0x007c, B:28:0x0082, B:34:0x008e, B:38:0x0099, B:39:0x009c, B:41:0x00a4, B:43:0x00b2, B:45:0x00b6, B:46:0x00b9, B:48:0x00be, B:50:0x00c3, B:51:0x00ca, B:19:0x0043, B:21:0x004a, B:23:0x0054, B:25:0x005f, B:53:0x00d1, B:55:0x00d5, B:57:0x00de, B:59:0x00e4, B:61:0x00e8, B:64:0x00ee, B:68:0x00fb, B:70:0x0101, B:73:0x010b, B:75:0x0111, B:79:0x011a, B:81:0x0127, B:92:0x0163, B:94:0x0169, B:96:0x0184, B:99:0x018f, B:101:0x019b, B:102:0x01a0, B:104:0x01b6, B:105:0x01be, B:107:0x01d1, B:109:0x01d7, B:111:0x01e1, B:113:0x01e9, B:114:0x01ec, B:82:0x0130, B:85:0x013a, B:87:0x0142, B:88:0x014b, B:90:0x0153, B:91:0x015b), top: B:120:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createView$4(android.view.View r13, int r14) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.LanguageSelectActivity.lambda$createView$4(android.view.View, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(AlertDialog alertDialog, boolean z) {
        alertDialog.dismiss();
        if (z) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                LanguageSelectActivity.this.lambda$createView$0();
            }
        }, 10L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0() {
        this.actionBar.closeSearchField();
        updateLanguage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(int i, DialogInterface dialogInterface) {
        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createView$3(String str, String str2) {
        return str2 != null && str2.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$6(View view, int i) {
        final LocaleController.LocaleInfo localeInfo;
        if (!isCatalogType()) {
            try {
                if (getParentActivity() != null && this.parentLayout != null && (view instanceof TextRadioCell)) {
                    Object[] objArr = this.listView.getAdapter() == this.searchListViewAdapter ? 1 : null;
                    if (!getMessagesController().premiumLocked && objArr == null) {
                        i = (i - ((7 - ((getChatValue() || getContextValue()) ? 0 : 1)) - (getMessagesController().premiumLocked ? 1 : 0))) + 2;
                    }
                    if (objArr != null) {
                        localeInfo = this.searchResult.get(i);
                    } else if (!this.unofficialLanguages.isEmpty() && i >= 0 && i < this.unofficialLanguages.size()) {
                        localeInfo = this.unofficialLanguages.get(i);
                    } else {
                        if (!this.unofficialLanguages.isEmpty()) {
                            i -= this.unofficialLanguages.size() + 1;
                        }
                        localeInfo = this.sortedLanguages.get(i);
                    }
                    if (localeInfo != null && localeInfo.pathToFile != null && (!localeInfo.isRemote() || localeInfo.serverIndex == Integer.MAX_VALUE)) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                        builder.setTitle(LocaleController.getString("DeleteLocalizationTitle", C3630R.string.DeleteLocalizationTitle));
                        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("DeleteLocalizationText", C3630R.string.DeleteLocalizationText, localeInfo.name)));
                        builder.setPositiveButton(LocaleController.getString("Delete", C3630R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda1
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i2) {
                                LanguageSelectActivity.this.lambda$createView$5(localeInfo, dialogInterface, i2);
                            }
                        });
                        builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
                        AlertDialog create = builder.create();
                        showDialog(create);
                        TextView textView = (TextView) create.getButton(-1);
                        if (textView != null) {
                            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                        }
                    }
                }
                return false;
            } catch (Exception e) {
                FileLog.m97e(e);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(LocaleController.LocaleInfo localeInfo, DialogInterface dialogInterface, int i) {
        if (LocaleController.getInstance().deleteLanguage(localeInfo, this.currentAccount)) {
            fillLanguages();
            ArrayList<LocaleController.LocaleInfo> arrayList = this.searchResult;
            if (arrayList != null) {
                arrayList.remove(localeInfo);
            }
            ListAdapter listAdapter = this.listAdapter;
            if (listAdapter != null) {
                listAdapter.notifyDataSetChanged();
            }
            ListAdapter listAdapter2 = this.searchListViewAdapter;
            if (listAdapter2 != null) {
                listAdapter2.notifyDataSetChanged();
            }
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.suggestedLangpack || isCatalogType() || this.listAdapter == null) {
            return;
        }
        fillLanguages();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LanguageSelectActivity.this.lambda$didReceivedNotification$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$7() {
        this.listAdapter.notifyDataSetChanged();
    }

    private void fillLanguages() {
        if (isCatalogType()) {
            this.sortedLanguages = new ArrayList<>();
            this.unofficialLanguages = this.catalogLanguages;
            return;
        }
        final LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
        Comparator comparator = new Comparator() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda8
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$fillLanguages$8;
                lambda$fillLanguages$8 = LanguageSelectActivity.lambda$fillLanguages$8(LocaleController.LocaleInfo.this, (LocaleController.LocaleInfo) obj, (LocaleController.LocaleInfo) obj2);
                return lambda$fillLanguages$8;
            }
        };
        this.sortedLanguages = new ArrayList<>();
        this.unofficialLanguages = new ArrayList<>(LocaleController.getInstance().unofficialLanguages);
        ArrayList<LocaleController.LocaleInfo> arrayList = LocaleController.getInstance().languages;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            LocaleController.LocaleInfo localeInfo = arrayList.get(i);
            if (localeInfo.serverIndex != Integer.MAX_VALUE) {
                this.sortedLanguages.add(localeInfo);
            } else {
                this.unofficialLanguages.add(localeInfo);
            }
        }
        Collections.sort(this.sortedLanguages, comparator);
        Collections.sort(this.unofficialLanguages, comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$fillLanguages$8(LocaleController.LocaleInfo localeInfo, LocaleController.LocaleInfo localeInfo2, LocaleController.LocaleInfo localeInfo3) {
        if (localeInfo2 == localeInfo) {
            return -1;
        }
        if (localeInfo3 == localeInfo) {
            return 1;
        }
        int i = localeInfo2.serverIndex;
        int i2 = localeInfo3.serverIndex;
        if (i == i2) {
            return localeInfo2.name.compareTo(localeInfo3.name);
        }
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        LocaleController.getInstance().checkForcePatchLangpack(this.currentAccount, new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                LanguageSelectActivity.this.lambda$onBecomeFullyVisible$9();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBecomeFullyVisible$9() {
        if (this.isPaused) {
            return;
        }
        updateLanguage();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    public void search(String str) {
        if (str == null) {
            this.searchResult = null;
            if (this.listView != null) {
                this.emptyView.setVisibility(8);
                this.listView.setAdapter(this.listAdapter);
                return;
            }
            return;
        }
        processSearch(str);
    }

    private void updateLanguage() {
        if (this.actionBar != null) {
            String string = LocaleController.getString("Language", C3630R.string.Language);
            if (!TextUtils.equals(this.actionBar.getTitle(), string)) {
                this.actionBar.setTitleAnimated(string, true, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            }
        }
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyItemRangeChanged(0, listAdapter.getItemCount());
        }
    }

    private void processSearch(final String str) {
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                LanguageSelectActivity.this.lambda$processSearch$10(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSearch$10(String str) {
        if (str.trim().toLowerCase().length() == 0) {
            updateSearchResults(new ArrayList<>());
            return;
        }
        System.currentTimeMillis();
        ArrayList<LocaleController.LocaleInfo> arrayList = new ArrayList<>();
        int size = this.unofficialLanguages.size();
        for (int i = 0; i < size; i++) {
            LocaleController.LocaleInfo localeInfo = this.unofficialLanguages.get(i);
            if (localeInfo.name.toLowerCase().startsWith(str) || localeInfo.nameEnglish.toLowerCase().startsWith(str)) {
                arrayList.add(localeInfo);
            }
        }
        int size2 = this.sortedLanguages.size();
        for (int i2 = 0; i2 < size2; i2++) {
            LocaleController.LocaleInfo localeInfo2 = this.sortedLanguages.get(i2);
            if (localeInfo2.name.toLowerCase().startsWith(str) || localeInfo2.nameEnglish.toLowerCase().startsWith(str)) {
                arrayList.add(localeInfo2);
            }
        }
        updateSearchResults(arrayList);
    }

    private void updateSearchResults(final ArrayList<LocaleController.LocaleInfo> arrayList) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                LanguageSelectActivity.this.lambda$updateSearchResults$11(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSearchResults$11(ArrayList arrayList) {
        this.searchResult = arrayList;
        this.searchListViewAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getContextValue() {
        return getMessagesController().getTranslateController().isContextTranslateEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getChatValue() {
        return getMessagesController().getTranslateController().isFeatureAvailable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.LanguageSelectActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;
        private boolean search;

        public ListAdapter(Context context, boolean z) {
            this.mContext = context;
            this.search = z;
        }

        @Override // org.telegram.p042ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 0 || itemViewType == 4 || itemViewType == 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i = 0;
            if (this.search) {
                if (LanguageSelectActivity.this.searchResult == null) {
                    return 0;
                }
                return LanguageSelectActivity.this.searchResult.size();
            }
            int size = LanguageSelectActivity.this.sortedLanguages.size();
            if (size != 0) {
                size++;
            }
            if (!LanguageSelectActivity.this.unofficialLanguages.isEmpty()) {
                size += LanguageSelectActivity.this.unofficialLanguages.size() + 1;
            }
            if (LanguageSelectActivity.this.isCatalogType() || LanguageSelectActivity.this.getMessagesController().premiumLocked) {
                return size + 1;
            }
            int i2 = (!LanguageSelectActivity.this.getMessagesController().premiumLocked ? 1 : 0) + 4;
            if (LanguageSelectActivity.this.getChatValue() || LanguageSelectActivity.this.getContextValue()) {
                i = 1;
            }
            return (((i2 + i) + 1) + size) - 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            if (i == 0) {
                View textRadioCell = new TextRadioCell(this.mContext);
                textRadioCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = textRadioCell;
            } else if (i == 2) {
                View textCheckCell = new TextCheckCell(this.mContext);
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = textCheckCell;
            } else if (i == 3) {
                FrameLayout headerCell = new HeaderCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = headerCell;
            } else if (i == 4) {
                FrameLayout textSettingsCell = new TextSettingsCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = textSettingsCell;
            } else if (i == 5) {
                view = new TextInfoPrivacyCell(this.mContext);
            } else {
                view = new ShadowSectionCell(this.mContext);
            }
            return new RecyclerListView.Holder(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof TextRadioCell) {
                ((TextRadioCell) view).updateRTL();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:106:0x029c, code lost:
            if (r13 == (r11.this$0.unofficialLanguages.size() - 1)) goto L115;
         */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x02dd, code lost:
            if (r13 == (r11.this$0.sortedLanguages.size() - 1)) goto L115;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0126, code lost:
            if (r12.getValueTextView().getPaint().measureText(r2) > java.lang.Math.min((org.telegram.messenger.AndroidUtilities.displaySize.x - org.telegram.messenger.AndroidUtilities.m102dp(34)) / 2.0f, (org.telegram.messenger.AndroidUtilities.displaySize.x - org.telegram.messenger.AndroidUtilities.m102dp(84)) - r12.getTextView().getPaint().measureText(r0))) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0262, code lost:
            if (r13 == (r11.this$0.searchResult.size() - 1)) goto L115;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0264, code lost:
            r13 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x0267, code lost:
            r13 = false;
         */
        /* JADX WARN: Removed duplicated region for block: B:47:0x012c  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r12, int r13) {
            /*
                Method dump skipped, instructions count: 829
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.LanguageSelectActivity.ListAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (this.search) {
                return 0;
            }
            if (!LanguageSelectActivity.this.isCatalogType() && !LanguageSelectActivity.this.getMessagesController().premiumLocked) {
                int i2 = i - 1;
                if (i == 0) {
                    return 3;
                }
                i = i2;
            }
            if (!LanguageSelectActivity.this.isCatalogType() && !LanguageSelectActivity.this.getMessagesController().premiumLocked) {
                int i3 = i - 1;
                if (i == 0) {
                    return 2;
                }
                i = i3;
            }
            if (LanguageSelectActivity.this.getChatValue() || LanguageSelectActivity.this.getContextValue()) {
                int i4 = i - 1;
                if (i == 0) {
                    return 4;
                }
                i = i4;
            }
            if (!LanguageSelectActivity.this.isCatalogType() && !LanguageSelectActivity.this.getMessagesController().premiumLocked) {
                int i5 = i - 1;
                if (i == 0) {
                    return 5;
                }
                i = i5;
            }
            if (!LanguageSelectActivity.this.isCatalogType() && !LanguageSelectActivity.this.getMessagesController().premiumLocked) {
                int i6 = i - 1;
                if (i == 0) {
                    return 3;
                }
                i = i6;
            }
            return ((LanguageSelectActivity.this.unofficialLanguages.isEmpty() || !(i == LanguageSelectActivity.this.unofficialLanguages.size() || i == (LanguageSelectActivity.this.unofficialLanguages.size() + LanguageSelectActivity.this.sortedLanguages.size()) + 1)) && !(LanguageSelectActivity.this.unofficialLanguages.isEmpty() && i == LanguageSelectActivity.this.sortedLanguages.size())) ? 0 : 1;
        }
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{LanguageCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3702ActionBar c3702ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3702ActionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCH, null, null, null, null, Theme.key_actionBarDefaultSearch));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCHPLACEHOLDER, null, null, null, null, Theme.key_actionBarDefaultSearchPlaceholder));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LanguageCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LanguageCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LanguageCell.class}, new String[]{"checkImage"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_featuredStickers_addedIcon));
        return arrayList;
    }
}
