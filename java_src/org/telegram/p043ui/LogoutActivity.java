package org.telegram.p043ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextDetailSettingsCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.LogoutActivity */
/* loaded from: classes5.dex */
public class LogoutActivity extends BaseFragment {
    private int addAccountRow;
    private int alternativeHeaderRow;
    private int alternativeSectionRow;
    private int cacheRow;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int logoutRow;
    private int logoutSectionRow;
    private int passcodeRow;
    private int phoneRow;
    private int rowCount;
    private int supportRow;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        this.rowCount = 0;
        this.rowCount = 0 + 1;
        this.alternativeHeaderRow = 0;
        if (UserConfig.getActivatedAccountsCount() < 5) {
            int i = this.rowCount;
            this.rowCount = i + 1;
            this.addAccountRow = i;
        } else {
            this.addAccountRow = -1;
        }
        if (SharedConfig.passcodeHash.length() <= 0) {
            int i2 = this.rowCount;
            this.rowCount = i2 + 1;
            this.passcodeRow = i2;
        } else {
            this.passcodeRow = -1;
        }
        int i3 = this.rowCount;
        int i4 = i3 + 1;
        this.rowCount = i4;
        this.cacheRow = i3;
        int i5 = i4 + 1;
        this.rowCount = i5;
        this.phoneRow = i4;
        int i6 = i5 + 1;
        this.rowCount = i6;
        this.supportRow = i5;
        int i7 = i6 + 1;
        this.rowCount = i7;
        this.alternativeSectionRow = i6;
        int i8 = i7 + 1;
        this.rowCount = i8;
        this.logoutRow = i7;
        this.rowCount = i8 + 1;
        this.logoutSectionRow = i8;
        return true;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        this.actionBar.setTitle(LocaleController.getString("LogOutTitle", C3632R.string.LogOutTitle));
        if (AndroidUtilities.isTablet()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.LogoutActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    LogoutActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        ((FrameLayout) this.fragmentView).addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.LogoutActivity$$ExternalSyntheticLambda1
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
                LogoutActivity.this.lambda$createView$0(view, i, f, f2);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view, int i, float f, float f2) {
        Integer num = null;
        if (i == this.addAccountRow) {
            int i2 = 0;
            for (int i3 = 4; i3 >= 0; i3--) {
                if (!UserConfig.getInstance(i3).isClientActivated()) {
                    i2++;
                    if (num == null) {
                        num = Integer.valueOf(i3);
                    }
                }
            }
            if (!UserConfig.hasPremiumOnAccounts()) {
                i2 -= 2;
            }
            if (i2 > 0 && num != null) {
                presentFragment(new LoginActivity(num.intValue()));
            } else if (!UserConfig.hasPremiumOnAccounts()) {
                showDialog(new LimitReachedBottomSheet(this, getContext(), 7, this.currentAccount, null));
            }
        } else if (i == this.passcodeRow) {
            presentFragment(PasscodeActivity.determineOpenFragment());
        } else if (i == this.cacheRow) {
            presentFragment(new CacheControlActivity());
        } else if (i == this.phoneRow) {
            presentFragment(new ActionIntroActivity(3));
        } else if (i == this.supportRow) {
            showDialog(AlertsCreator.createSupportAlert(this, null));
        } else if (i == this.logoutRow && getParentActivity() != null) {
            showDialog(makeLogOutDialog(getParentActivity(), this.currentAccount));
        }
    }

    public static AlertDialog makeLogOutDialog(Context context, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(LocaleController.getString("AreYouSureLogout", C3632R.string.AreYouSureLogout));
        int i2 = C3632R.string.LogOut;
        builder.setTitle(LocaleController.getString("LogOut", i2));
        builder.setPositiveButton(LocaleController.getString("LogOut", i2), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.LogoutActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                LogoutActivity.lambda$makeLogOutDialog$1(i, dialogInterface, i3);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        AlertDialog create = builder.create();
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$makeLogOutDialog$1(int i, DialogInterface dialogInterface, int i2) {
        MessagesController.getInstance(i).performLogout(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    /* renamed from: org.telegram.ui.LogoutActivity$ListAdapter */
    /* loaded from: classes5.dex */
    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LogoutActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (i == LogoutActivity.this.alternativeHeaderRow) {
                    headerCell.setText(LocaleController.getString("AlternativeOptions", C3632R.string.AlternativeOptions));
                }
            } else if (itemViewType != 1) {
                if (itemViewType == 3) {
                    TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                    if (i == LogoutActivity.this.logoutRow) {
                        textSettingsCell.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
                        textSettingsCell.setText(LocaleController.getString("LogOutTitle", C3632R.string.LogOutTitle), false);
                    }
                } else if (itemViewType != 4) {
                } else {
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    if (i == LogoutActivity.this.logoutSectionRow) {
                        textInfoPrivacyCell.setText(LocaleController.getString("LogOutInfo", C3632R.string.LogOutInfo));
                    }
                }
            } else {
                TextDetailSettingsCell textDetailSettingsCell = (TextDetailSettingsCell) viewHolder.itemView;
                if (i != LogoutActivity.this.addAccountRow) {
                    if (i != LogoutActivity.this.passcodeRow) {
                        if (i != LogoutActivity.this.cacheRow) {
                            if (i != LogoutActivity.this.phoneRow) {
                                if (i == LogoutActivity.this.supportRow) {
                                    textDetailSettingsCell.setTextAndValueAndIcon(LocaleController.getString("ContactSupport", C3632R.string.ContactSupport), LocaleController.getString("ContactSupportInfo", C3632R.string.ContactSupportInfo), C3632R.C3634drawable.msg_help, false);
                                    return;
                                }
                                return;
                            }
                            textDetailSettingsCell.setTextAndValueAndIcon(LocaleController.getString("ChangePhoneNumber", C3632R.string.ChangePhoneNumber), LocaleController.getString("ChangePhoneNumberInfo", C3632R.string.ChangePhoneNumberInfo), C3632R.C3634drawable.msg_newphone, true);
                            return;
                        }
                        textDetailSettingsCell.setTextAndValueAndIcon(LocaleController.getString("ClearCache", C3632R.string.ClearCache), LocaleController.getString("ClearCacheInfo", C3632R.string.ClearCacheInfo), C3632R.C3634drawable.msg_clearcache, true);
                        return;
                    }
                    textDetailSettingsCell.setTextAndValueAndIcon(LocaleController.getString("SetPasscode", C3632R.string.SetPasscode), LocaleController.getString("SetPasscodeInfo", C3632R.string.SetPasscodeInfo), C3632R.C3634drawable.msg_permissions, true);
                    return;
                }
                textDetailSettingsCell.setTextAndValueAndIcon(LocaleController.getString("AddAnotherAccount", C3632R.string.AddAnotherAccount), LocaleController.getString("AddAnotherAccountInfo", C3632R.string.AddAnotherAccountInfo), C3632R.C3634drawable.msg_contact_add, true);
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            return adapterPosition == LogoutActivity.this.addAccountRow || adapterPosition == LogoutActivity.this.passcodeRow || adapterPosition == LogoutActivity.this.cacheRow || adapterPosition == LogoutActivity.this.phoneRow || adapterPosition == LogoutActivity.this.supportRow || adapterPosition == LogoutActivity.this.logoutRow;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View headerCell;
            if (i == 0) {
                headerCell = new HeaderCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 1) {
                TextDetailSettingsCell textDetailSettingsCell = new TextDetailSettingsCell(this.mContext);
                textDetailSettingsCell.setMultilineDetail(true);
                textDetailSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                headerCell = textDetailSettingsCell;
            } else if (i == 2) {
                headerCell = new ShadowSectionCell(this.mContext);
            } else if (i == 3) {
                headerCell = new TextSettingsCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else {
                headerCell = new TextInfoPrivacyCell(this.mContext);
                headerCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
            }
            headerCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == LogoutActivity.this.alternativeHeaderRow) {
                return 0;
            }
            if (i == LogoutActivity.this.addAccountRow || i == LogoutActivity.this.passcodeRow || i == LogoutActivity.this.cacheRow || i == LogoutActivity.this.phoneRow || i == LogoutActivity.this.supportRow) {
                return 1;
            }
            if (i == LogoutActivity.this.alternativeSectionRow) {
                return 2;
            }
            return i == LogoutActivity.this.logoutRow ? 3 : 4;
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, HeaderCell.class, TextDetailSettingsCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3704ActionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i3 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailSettingsCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
        return arrayList;
    }
}
