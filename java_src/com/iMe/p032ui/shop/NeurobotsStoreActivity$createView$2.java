package com.iMe.p032ui.shop;

import android.widget.EditText;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.iMe.p032ui.shop.view.custom.CustomTabLayout;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.PublishSubject;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.Components.EditTextBoldCursor;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: NeurobotsStoreActivity.kt */
/* renamed from: com.iMe.ui.shop.NeurobotsStoreActivity$createView$2 */
/* loaded from: classes3.dex */
public final class NeurobotsStoreActivity$createView$2 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
    final /* synthetic */ NeurobotsStoreActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NeurobotsStoreActivity$createView$2(NeurobotsStoreActivity neurobotsStoreActivity) {
        this.this$0 = neurobotsStoreActivity;
    }

    @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
    public void onSearchExpand() {
        CustomTabLayout customTabLayout;
        ActionBarMenuItem actionBarMenuItem;
        ActionBarMenuItem actionBarMenuItem2;
        ActionBarMenuItem actionBarMenuItem3;
        EditTextBoldCursor searchField;
        customTabLayout = this.this$0.tabLayout;
        if (customTabLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabLayout");
            customTabLayout = null;
        }
        customTabLayout.setVisibility(8);
        this.this$0.listenForSearchResults();
        actionBarMenuItem = this.this$0.searchMenuItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(8);
        }
        actionBarMenuItem2 = this.this$0.changeCountryItem;
        if (actionBarMenuItem2 != null) {
            actionBarMenuItem2.setVisibility(8);
        }
        actionBarMenuItem3 = this.this$0.searchItem;
        if (actionBarMenuItem3 == null || (searchField = actionBarMenuItem3.getSearchField()) == null) {
            return;
        }
        final NeurobotsStoreActivity neurobotsStoreActivity = this.this$0;
        searchField.postDelayed(new Runnable() { // from class: com.iMe.ui.shop.NeurobotsStoreActivity$createView$2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NeurobotsStoreActivity$createView$2.onSearchExpand$lambda$0(NeurobotsStoreActivity.this);
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSearchExpand$lambda$0(NeurobotsStoreActivity this$0) {
        ActionBarMenuItem actionBarMenuItem;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        actionBarMenuItem = this$0.searchItem;
        AndroidUtilities.showKeyboard(actionBarMenuItem != null ? actionBarMenuItem.getSearchField() : null);
    }

    @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
    public void onSearchCollapse() {
        TextView textView;
        RecyclerListView recyclerListView;
        CoordinatorLayout coordinatorLayout;
        CustomTabLayout customTabLayout;
        Disposable disposable;
        ActionBarMenuItem actionBarMenuItem;
        ActionBarMenuItem actionBarMenuItem2;
        ActionBarMenuItem actionBarMenuItem3;
        textView = this.this$0.nothingFoundPlaceholder;
        CustomTabLayout customTabLayout2 = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
            textView = null;
        }
        textView.setVisibility(8);
        recyclerListView = this.this$0.searchResultsList;
        if (recyclerListView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsList");
            recyclerListView = null;
        }
        recyclerListView.setVisibility(8);
        coordinatorLayout = this.this$0.baseViewsContainer;
        if (coordinatorLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseViewsContainer");
            coordinatorLayout = null;
        }
        coordinatorLayout.setVisibility(0);
        customTabLayout = this.this$0.tabLayout;
        if (customTabLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabLayout");
        } else {
            customTabLayout2 = customTabLayout;
        }
        customTabLayout2.setVisibility(0);
        disposable = this.this$0.searchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        actionBarMenuItem = this.this$0.searchMenuItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(0);
        }
        actionBarMenuItem2 = this.this$0.changeCountryItem;
        if (actionBarMenuItem2 != null) {
            actionBarMenuItem2.setVisibility(0);
        }
        actionBarMenuItem3 = this.this$0.searchItem;
        if (actionBarMenuItem3 == null) {
            return;
        }
        actionBarMenuItem3.setVisibility(8);
    }

    @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
    public void onTextChanged(EditText editText) {
        PublishSubject publishSubject;
        String valueOf = String.valueOf(editText != null ? editText.getText() : null);
        if (valueOf.length() > 0) {
            publishSubject = this.this$0.searchSubject;
            publishSubject.onNext(valueOf);
        }
    }
}
