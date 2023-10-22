package org.telegram.p042ui;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.LocaleController;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.Delegates.MemberRequestsDelegate;
/* renamed from: org.telegram.ui.MemberRequestsActivity */
/* loaded from: classes5.dex */
public class MemberRequestsActivity extends BaseFragment {
    private final MemberRequestsDelegate delegate;

    public MemberRequestsActivity(long j) {
        this.delegate = new MemberRequestsDelegate(this, getLayoutContainer(), j, true) { // from class: org.telegram.ui.MemberRequestsActivity.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p042ui.Delegates.MemberRequestsDelegate
            public void onImportersChanged(String str, boolean z, boolean z2) {
                if (z2) {
                    ((BaseFragment) MemberRequestsActivity.this).actionBar.setSearchFieldText("");
                } else {
                    super.onImportersChanged(str, z, z2);
                }
            }
        };
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public View createView(Context context) {
        int i;
        String str;
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3702ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.MemberRequestsActivity.2
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    MemberRequestsActivity.this.finishFragment();
                }
            }
        });
        this.actionBar.setBackButtonImage(C3630R.C3632drawable.ic_ab_back);
        C3702ActionBar c3702ActionBar = this.actionBar;
        if (this.delegate.isChannel) {
            i = C3630R.string.SubscribeRequests;
            str = "SubscribeRequests";
        } else {
            i = C3630R.string.MemberRequests;
            str = "MemberRequests";
        }
        c3702ActionBar.setTitle(LocaleController.getString(str, i));
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C3630R.C3632drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.MemberRequestsActivity.3
            @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                super.onSearchExpand();
                MemberRequestsActivity.this.delegate.setSearchExpanded(true);
            }

            @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                super.onSearchCollapse();
                MemberRequestsActivity.this.delegate.setSearchExpanded(false);
                MemberRequestsActivity.this.delegate.setQuery(null);
            }

            @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                super.onTextChanged(editText);
                MemberRequestsActivity.this.delegate.setQuery(editText.getText().toString());
            }
        });
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString("Search", C3630R.string.Search));
        actionBarMenuItemSearchListener.setVisibility(8);
        FrameLayout rootLayout = this.delegate.getRootLayout();
        this.delegate.loadMembers();
        this.fragmentView = rootLayout;
        return rootLayout;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        return this.delegate.onBackPressed();
    }
}
