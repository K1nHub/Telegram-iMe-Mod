package org.telegram.p044ui;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.DialogInterface;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.AutoDeleteMessagesActivity;
import org.telegram.p044ui.Cells.HeaderCell;
import org.telegram.p044ui.Cells.RadioCell;
import org.telegram.p044ui.Cells.TextInfoPrivacyCell;
import org.telegram.p044ui.Components.AlertsCreator;
import org.telegram.p044ui.Components.BulletinFactory;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.StickerImageView;
import org.telegram.p044ui.UsersSelectActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_setDefaultHistoryTTL;
/* renamed from: org.telegram.ui.AutoDeleteMessagesActivity */
/* loaded from: classes5.dex */
public class AutoDeleteMessagesActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    RadioCellInternal afterOneDay;
    RadioCellInternal afterOneMonth;
    RadioCellInternal afterOneWeek;
    LinearLayout checkBoxContainer;
    RadioCellInternal customTimeButton;
    RadioCellInternal offCell;
    ArrayList<RadioCellInternal> arrayList = new ArrayList<>();
    public int startFromTtl = 0;

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        int globalTTl = getUserConfig().getGlobalTTl();
        this.startFromTtl = globalTTl;
        if (globalTTl < 0) {
            this.startFromTtl = 0;
        }
        getUserConfig().loadGlobalTTl();
        getNotificationCenter().addObserver(this, NotificationCenter.didUpdateGlobalAutoDeleteTimer);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.didUpdateGlobalAutoDeleteTimer);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C3290R.C3292drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString("AutoDeleteMessages", C3290R.string.AutoDeleteMessages));
        this.actionBar.setActionBarMenuOnItemClick(new C3356ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.AutoDeleteMessagesActivity.1
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    AutoDeleteMessagesActivity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        FrameLayout frameLayout2 = frameLayout;
        frameLayout2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        ScrollView scrollView = new ScrollView(getContext());
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        scrollView.addView(linearLayout);
        frameLayout2.addView(scrollView);
        FrameLayout frameLayout3 = new FrameLayout(context);
        StickerImageView stickerImageView = new StickerImageView(context, this.currentAccount);
        stickerImageView.setStickerNum(10);
        frameLayout3.addView(stickerImageView, LayoutHelper.createFrame((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, (int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 17));
        linearLayout.addView(frameLayout3, LayoutHelper.createLinear(-1, 170));
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        this.checkBoxContainer = linearLayout2;
        linearLayout2.setOrientation(1);
        this.checkBoxContainer.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        linearLayout.addView(this.checkBoxContainer, LayoutHelper.createLinear(-1, -2));
        HeaderCell headerCell = new HeaderCell(getContext());
        headerCell.setText(LocaleController.getString("MessageLifetime", C3290R.string.MessageLifetime));
        this.checkBoxContainer.addView(headerCell);
        RadioCellInternal radioCellInternal = new RadioCellInternal(this, getContext());
        this.offCell = radioCellInternal;
        radioCellInternal.setText(LocaleController.getString("ShortMessageLifetimeForever", C3290R.string.ShortMessageLifetimeForever), false, true);
        RadioCellInternal radioCellInternal2 = this.offCell;
        radioCellInternal2.time = 0;
        this.checkBoxContainer.addView(radioCellInternal2);
        RadioCellInternal radioCellInternal3 = new RadioCellInternal(this, getContext());
        this.afterOneDay = radioCellInternal3;
        radioCellInternal3.setText(LocaleController.getString("AutoDeleteAfter1Day", C3290R.string.AutoDeleteAfter1Day), false, true);
        RadioCellInternal radioCellInternal4 = this.afterOneDay;
        radioCellInternal4.time = 1440;
        this.checkBoxContainer.addView(radioCellInternal4);
        RadioCellInternal radioCellInternal5 = new RadioCellInternal(this, getContext());
        this.afterOneWeek = radioCellInternal5;
        radioCellInternal5.setText(LocaleController.getString("AutoDeleteAfter1Week", C3290R.string.AutoDeleteAfter1Week), false, true);
        RadioCellInternal radioCellInternal6 = this.afterOneWeek;
        radioCellInternal6.time = 10080;
        this.checkBoxContainer.addView(radioCellInternal6);
        RadioCellInternal radioCellInternal7 = new RadioCellInternal(this, getContext());
        this.afterOneMonth = radioCellInternal7;
        radioCellInternal7.setText(LocaleController.getString("AutoDeleteAfter1Month", C3290R.string.AutoDeleteAfter1Month), false, true);
        RadioCellInternal radioCellInternal8 = this.afterOneMonth;
        radioCellInternal8.time = 44640;
        this.checkBoxContainer.addView(radioCellInternal8);
        RadioCellInternal radioCellInternal9 = new RadioCellInternal(this, getContext());
        this.customTimeButton = radioCellInternal9;
        radioCellInternal9.setText(LocaleController.getString("SetCustomTime", C3290R.string.SetCustomTime), false, false);
        this.customTimeButton.hideRadioButton();
        this.checkBoxContainer.addView(this.customTimeButton);
        this.arrayList.add(this.offCell);
        this.arrayList.add(this.afterOneDay);
        this.arrayList.add(this.afterOneWeek);
        this.arrayList.add(this.afterOneMonth);
        this.arrayList.add(this.customTimeButton);
        updateItems();
        TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context);
        textInfoPrivacyCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString("GlobalAutoDeleteInfo", C3290R.string.GlobalAutoDeleteInfo), new RunnableC35452()));
        linearLayout.addView(textInfoPrivacyCell, LayoutHelper.createLinear(-1, -2));
        selectDate(this.startFromTtl, false);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.AutoDeleteMessagesActivity$2 */
    /* loaded from: classes5.dex */
    public class RunnableC35452 implements Runnable {
        RunnableC35452() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UsersSelectActivity usersSelectActivity = new UsersSelectActivity(1);
            usersSelectActivity.setTtlPeriod(AutoDeleteMessagesActivity.this.getSelectedTime());
            usersSelectActivity.setDelegate(new UsersSelectActivity.FilterUsersActivityDelegate() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$2$$ExternalSyntheticLambda1
                @Override // org.telegram.p044ui.UsersSelectActivity.FilterUsersActivityDelegate
                public final void didSelectChats(ArrayList arrayList, int i) {
                    AutoDeleteMessagesActivity.RunnableC35452.this.lambda$run$1(arrayList, i);
                }
            });
            AutoDeleteMessagesActivity.this.presentFragment(usersSelectActivity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(final ArrayList arrayList, int i) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AutoDeleteMessagesActivity.RunnableC35452.this.lambda$run$0(arrayList);
                }
            }, 100L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ArrayList arrayList) {
            if (arrayList.isEmpty()) {
                return;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                AutoDeleteMessagesActivity.this.getMessagesController().setDialogHistoryTTL(((Long) arrayList.get(i)).longValue(), AutoDeleteMessagesActivity.this.getSelectedTime() * 60);
            }
            if (AutoDeleteMessagesActivity.this.getSelectedTime() > 0) {
                BulletinFactory.m29of(AutoDeleteMessagesActivity.this).createSimpleBulletin(C3290R.raw.fire_on, AndroidUtilities.replaceTags(LocaleController.formatString("AutodeleteTimerEnabledForChats", C3290R.string.AutodeleteTimerEnabledForChats, LocaleController.formatTTLString(AutoDeleteMessagesActivity.this.getSelectedTime() * 60), LocaleController.formatPluralString("Chats", arrayList.size(), Integer.valueOf(arrayList.size()))))).show();
            } else {
                BulletinFactory.m29of(AutoDeleteMessagesActivity.this).createSimpleBulletin(C3290R.raw.fire_off, LocaleController.formatString("AutodeleteTimerDisabledForChats", C3290R.string.AutodeleteTimerDisabledForChats, LocaleController.formatPluralString("Chats", arrayList.size(), Integer.valueOf(arrayList.size())))).show();
            }
        }
    }

    private void updateItems() {
        for (int i = 0; i < this.arrayList.size(); i++) {
            this.arrayList.get(i).setBackground(Theme.createSelectorWithBackgroundDrawable(Theme.getColor(Theme.key_windowBackgroundWhite), Theme.getColor(Theme.key_listSelector)));
            this.arrayList.get(i).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoDeleteMessagesActivity.this.lambda$updateItems$2(view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.AutoDeleteMessagesActivity$3 */
    /* loaded from: classes5.dex */
    public class C35463 implements AlertsCreator.ScheduleDatePickerDelegate {
        @Override // org.telegram.p044ui.Components.AlertsCreator.ScheduleDatePickerDelegate
        public /* synthetic */ ArrayList getSelectedDialogs() {
            return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
        }

        C35463() {
        }

        @Override // org.telegram.p044ui.Components.AlertsCreator.ScheduleDatePickerDelegate
        public void didSelectDate(boolean z, final int i, String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AutoDeleteMessagesActivity.C35463.this.lambda$didSelectDate$0(i);
                }
            }, 50L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectDate$0(int i) {
            AutoDeleteMessagesActivity.this.selectDate(i, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateItems$2(final View view) {
        if (view == this.customTimeButton) {
            AlertsCreator.createAutoDeleteDatePickerDialog(getContext(), 1, null, new C35463());
            return;
        }
        int i = ((RadioCellInternal) view).time;
        if (getSelectedTime() == 0 && i > 0) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setTitle(LocaleController.getString("MessageLifetime", C3290R.string.MessageLifetime));
            builder.setMessage(LocaleController.formatString("AutoDeleteConfirmMessage", C3290R.string.AutoDeleteConfirmMessage, LocaleController.formatTTLString(i * 60)));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), AutoDeleteMessagesActivity$$ExternalSyntheticLambda1.INSTANCE);
            builder.setPositiveButton(LocaleController.getString("Enable", C3290R.string.Enable), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    AutoDeleteMessagesActivity.this.lambda$updateItems$1(view, dialogInterface, i2);
                }
            });
            builder.show();
            return;
        }
        selectRadioButton(view, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateItems$1(View view, DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        selectRadioButton(view, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSelectedTime() {
        for (int i = 0; i < this.arrayList.size(); i++) {
            if (this.arrayList.get(i).isChecked()) {
                return this.arrayList.get(i).time;
            }
        }
        return this.startFromTtl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectDate(int i, boolean z) {
        TransitionSet transitionSet = new TransitionSet();
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setDuration(150L);
        Fade fade = new Fade(1);
        fade.setDuration(150L);
        transitionSet.addTransition(new Fade(2).setDuration(150L)).addTransition(changeBounds).addTransition(fade);
        transitionSet.setOrdering(0);
        transitionSet.setInterpolator((TimeInterpolator) CubicBezierInterpolator.DEFAULT);
        TransitionManager.beginDelayedTransition(this.checkBoxContainer, transitionSet);
        for (int i2 = 0; i2 < this.arrayList.size(); i2++) {
            if (this.arrayList.get(i2).time == i) {
                selectRadioButton(this.arrayList.get(i2), z);
                return;
            }
        }
        int i3 = 0;
        while (i3 < this.arrayList.size()) {
            if (this.arrayList.get(i3).custom) {
                this.checkBoxContainer.removeView(this.arrayList.get(i3));
                this.arrayList.remove(i3);
                i3--;
            }
            i3++;
        }
        int size = this.arrayList.size();
        int i4 = 0;
        while (true) {
            if (i4 >= this.arrayList.size()) {
                break;
            } else if (i < this.arrayList.get(i4).time) {
                size = i4 + 1;
                break;
            } else {
                i4++;
            }
        }
        RadioCellInternal radioCellInternal = new RadioCellInternal(this, getContext());
        radioCellInternal.custom = true;
        radioCellInternal.time = i;
        radioCellInternal.setText(LocaleController.formatString("AutoDeleteAfterShort", C3290R.string.AutoDeleteAfterShort, LocaleController.formatTTLString(i * 60)), false, true);
        this.arrayList.add(size, radioCellInternal);
        this.checkBoxContainer.addView(radioCellInternal, size);
        updateItems();
        selectRadioButton(radioCellInternal, z);
    }

    private void selectRadioButton(View view, boolean z) {
        int i;
        for (int i2 = 0; i2 < this.arrayList.size(); i2++) {
            if (this.arrayList.get(i2) == view) {
                this.arrayList.get(i2).setChecked(true, this.fragmentBeginToShow);
            } else {
                this.arrayList.get(i2).setChecked(false, this.fragmentBeginToShow);
            }
        }
        if (!z || (i = ((RadioCellInternal) view).time) <= 0) {
            return;
        }
        BulletinFactory.m29of(this).createSimpleBulletin(C3290R.raw.fire_on, AndroidUtilities.replaceTags(LocaleController.formatString("AutoDeleteGlobalTimerEnabled", C3290R.string.AutoDeleteGlobalTimerEnabled, LocaleController.formatTTLString(i * 60)))).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.AutoDeleteMessagesActivity$RadioCellInternal */
    /* loaded from: classes5.dex */
    public class RadioCellInternal extends RadioCell {
        boolean custom;
        int time;

        public RadioCellInternal(AutoDeleteMessagesActivity autoDeleteMessagesActivity, Context context) {
            super(context);
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        for (int i = 0; i < this.arrayList.size(); i++) {
            if (this.arrayList.get(i).isChecked()) {
                if (this.arrayList.get(i).time != this.startFromTtl) {
                    this.startFromTtl = this.arrayList.get(i).time;
                    TLRPC$TL_messages_setDefaultHistoryTTL tLRPC$TL_messages_setDefaultHistoryTTL = new TLRPC$TL_messages_setDefaultHistoryTTL();
                    tLRPC$TL_messages_setDefaultHistoryTTL.period = this.arrayList.get(i).time * 60;
                    getConnectionsManager().sendRequest(tLRPC$TL_messages_setDefaultHistoryTTL, new RequestDelegate(this) { // from class: org.telegram.ui.AutoDeleteMessagesActivity.4
                        @Override // org.telegram.tgnet.RequestDelegate
                        public void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        }
                    });
                    getUserConfig().setGlobalTtl(this.startFromTtl);
                    NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.didUpdateGlobalAutoDeleteTimer, new Object[0]);
                    return;
                }
                return;
            }
        }
    }
}
