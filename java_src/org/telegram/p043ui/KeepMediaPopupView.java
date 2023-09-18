package org.telegram.p043ui;

import android.content.Context;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.CacheByChatsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarsImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.DialogsActivity;
/* renamed from: org.telegram.ui.KeepMediaPopupView */
/* loaded from: classes3.dex */
public class KeepMediaPopupView extends ActionBarPopupWindow.ActionBarPopupWindowLayout {
    private final CacheByChatsController cacheByChatsController;
    Callback callback;
    ArrayList<CheckItem> checkItems;
    int currentType;
    ActionBarMenuSubItem delete;
    private final TextView description;
    private ArrayList<CacheByChatsController.KeepMediaException> exceptions;
    ExceptionsView exceptionsView;
    ActionBarMenuSubItem forever;
    FrameLayout gap;
    ActionBarMenuSubItem oneDay;
    ActionBarMenuSubItem oneMonth;
    ActionBarMenuSubItem oneWeek;
    BaseFragment parentFragment;
    ActionBarMenuSubItem twoDay;

    /* renamed from: org.telegram.ui.KeepMediaPopupView$Callback */
    /* loaded from: classes3.dex */
    public interface Callback {
        void onKeepMediaChange(int i, int i2);
    }

    public KeepMediaPopupView(final BaseFragment baseFragment, Context context) {
        super(context, null);
        this.checkItems = new ArrayList<>();
        this.parentFragment = baseFragment;
        this.cacheByChatsController = baseFragment.getMessagesController().getCacheByChatsController();
        setFitItems(true);
        this.oneDay = ActionBarMenuItem.addItem(this, C3473R.C3475drawable.msg_autodelete_1d, LocaleController.formatPluralString("Days", 1, new Object[0]), false, null);
        this.twoDay = ActionBarMenuItem.addItem(this, C3473R.C3475drawable.msg_autodelete_2d, LocaleController.formatPluralString("Days", 2, new Object[0]), false, null);
        this.oneWeek = ActionBarMenuItem.addItem(this, C3473R.C3475drawable.msg_autodelete_1w, LocaleController.formatPluralString("Weeks", 1, new Object[0]), false, null);
        this.oneMonth = ActionBarMenuItem.addItem(this, C3473R.C3475drawable.msg_autodelete_1m, LocaleController.formatPluralString("Months", 1, new Object[0]), false, null);
        this.forever = ActionBarMenuItem.addItem(this, C3473R.C3475drawable.msg_cancel, LocaleController.getString("AutoDeleteMediaNever", C3473R.string.AutoDeleteMediaNever), false, null);
        ActionBarMenuSubItem addItem = ActionBarMenuItem.addItem(this, C3473R.C3475drawable.msg_delete, LocaleController.getString("DeleteException", C3473R.string.DeleteException), false, null);
        this.delete = addItem;
        int i = Theme.key_text_RedRegular;
        addItem.setColors(Theme.getColor(i), Theme.getColor(i));
        this.checkItems.add(new CheckItem(this.oneDay, CacheByChatsController.KEEP_MEDIA_ONE_DAY));
        this.checkItems.add(new CheckItem(this.twoDay, CacheByChatsController.KEEP_MEDIA_TWO_DAY));
        this.checkItems.add(new CheckItem(this.oneWeek, CacheByChatsController.KEEP_MEDIA_ONE_WEEK));
        this.checkItems.add(new CheckItem(this.oneMonth, CacheByChatsController.KEEP_MEDIA_ONE_MONTH));
        this.checkItems.add(new CheckItem(this.forever, CacheByChatsController.KEEP_MEDIA_FOREVER));
        this.checkItems.add(new CheckItem(this.delete, CacheByChatsController.KEEP_MEDIA_DELETE));
        FrameLayout frameLayout = new FrameLayout(context);
        this.gap = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuSeparator));
        View view = new View(context);
        view.setBackground(Theme.getThemedDrawableByKey(context, C3473R.C3475drawable.greydivider, Theme.key_windowBackgroundGrayShadow, null));
        this.gap.addView(view, LayoutHelper.createFrame(-1, -1));
        this.gap.setTag(C3473R.C3476id.fit_width_tag, 1);
        addView(this.gap, LayoutHelper.createLinear(-1, 8));
        ExceptionsView exceptionsView = new ExceptionsView(context);
        this.exceptionsView = exceptionsView;
        addView((View) exceptionsView, LayoutHelper.createLinear(-1, 48));
        this.exceptionsView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.KeepMediaPopupView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                KeepMediaPopupView.this.lambda$new$2(baseFragment, view2);
            }
        });
        for (int i2 = 0; i2 < this.checkItems.size(); i2++) {
            final int i3 = this.checkItems.get(i2).type;
            this.checkItems.get(i2).item.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.KeepMediaPopupView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    KeepMediaPopupView.this.lambda$new$3(i3, view2);
                }
            });
        }
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        this.description = linksTextView;
        linksTextView.setTag(C3473R.C3476id.fit_width_tag, 1);
        linksTextView.setPadding(AndroidUtilities.m72dp(13), 0, AndroidUtilities.m72dp(13), AndroidUtilities.m72dp(8));
        linksTextView.setTextSize(1, 13.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        linksTextView.setMovementMethod(LinkMovementMethod.getInstance());
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
        linksTextView.setText(LocaleController.getString("KeepMediaPopupDescription", C3473R.string.KeepMediaPopupDescription));
        addView((View) linksTextView, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 0, 8, 0, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(BaseFragment baseFragment, View view) {
        this.window.dismiss();
        if (this.exceptions.isEmpty()) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("onlySelect", true);
            bundle.putBoolean("onlySelect", true);
            bundle.putBoolean("checkCanWrite", false);
            int i = this.currentType;
            if (i == 1) {
                bundle.putInt("dialogsType", 6);
            } else if (i == 2) {
                bundle.putInt("dialogsType", 5);
            } else {
                bundle.putInt("dialogsType", 4);
            }
            bundle.putBoolean("allowGlobalSearch", false);
            final DialogsActivity dialogsActivity = new DialogsActivity(bundle);
            dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.KeepMediaPopupView$$ExternalSyntheticLambda3
                @Override // org.telegram.p043ui.DialogsActivity.DialogsActivityDelegate
                public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
                    boolean lambda$new$1;
                    lambda$new$1 = KeepMediaPopupView.this.lambda$new$1(dialogsActivity, dialogsActivity2, arrayList, charSequence, z, topicsFragment, callbacks$Callback1);
                    return lambda$new$1;
                }
            });
            baseFragment.presentFragment(dialogsActivity);
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putInt(SessionDescription.ATTR_TYPE, this.currentType);
        CacheChatsExceptionsFragment cacheChatsExceptionsFragment = new CacheChatsExceptionsFragment(bundle2);
        cacheChatsExceptionsFragment.setExceptions(this.exceptions);
        baseFragment.presentFragment(cacheChatsExceptionsFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(final DialogsActivity dialogsActivity, DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
        final CacheByChatsController.KeepMediaException keepMediaException = null;
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(null);
            return true;
        }
        int i = 0;
        while (i < arrayList.size()) {
            ArrayList<CacheByChatsController.KeepMediaException> arrayList2 = this.exceptions;
            CacheByChatsController.KeepMediaException keepMediaException2 = new CacheByChatsController.KeepMediaException(((MessagesStorage.TopicKey) arrayList.get(i)).dialogId, CacheByChatsController.KEEP_MEDIA_ONE_DAY);
            arrayList2.add(keepMediaException2);
            i++;
            keepMediaException = keepMediaException2;
        }
        this.cacheByChatsController.saveKeepMediaExceptions(this.currentType, this.exceptions);
        Bundle bundle = new Bundle();
        bundle.putInt(SessionDescription.ATTR_TYPE, this.currentType);
        final CacheChatsExceptionsFragment cacheChatsExceptionsFragment = new CacheChatsExceptionsFragment(this, bundle) { // from class: org.telegram.ui.KeepMediaPopupView.1
            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public void onTransitionAnimationEnd(boolean z2, boolean z3) {
                super.onTransitionAnimationEnd(z2, z3);
                if (!z2 || z3) {
                    return;
                }
                dialogsActivity.removeSelfFromStack();
            }
        };
        cacheChatsExceptionsFragment.setExceptions(this.exceptions);
        this.parentFragment.presentFragment(cacheChatsExceptionsFragment);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.KeepMediaPopupView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CacheChatsExceptionsFragment.this.showPopupFor(keepMediaException);
            }
        }, 150L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(int i, View view) {
        this.window.dismiss();
        int i2 = this.currentType;
        if (i2 >= 0) {
            this.cacheByChatsController.setKeepMedia(i2, i);
            Callback callback = this.callback;
            if (callback != null) {
                callback.onKeepMediaChange(this.currentType, i);
                return;
            }
            return;
        }
        Callback callback2 = this.callback;
        if (callback2 != null) {
            callback2.onKeepMediaChange(i2, i);
        }
    }

    public void update(int i) {
        this.currentType = i;
        if (i == 3) {
            this.twoDay.setVisibility(0);
            this.oneMonth.setVisibility(8);
            this.gap.setVisibility(8);
            this.exceptionsView.setVisibility(8);
            this.description.setVisibility(8);
        } else {
            this.twoDay.setVisibility(8);
            this.oneMonth.setVisibility(0);
            this.gap.setVisibility(0);
            this.exceptionsView.setVisibility(0);
            this.description.setVisibility(0);
        }
        ArrayList<CacheByChatsController.KeepMediaException> keepMediaExceptions = this.cacheByChatsController.getKeepMediaExceptions(i);
        this.exceptions = keepMediaExceptions;
        if (keepMediaExceptions.isEmpty()) {
            this.exceptionsView.titleView.setText(LocaleController.getString("AddAnException", C3473R.string.AddAnException));
            this.exceptionsView.titleView.setRightPadding(AndroidUtilities.m72dp(8));
            this.exceptionsView.avatarsImageView.setObject(0, this.parentFragment.getCurrentAccount(), null);
            this.exceptionsView.avatarsImageView.setObject(1, this.parentFragment.getCurrentAccount(), null);
            this.exceptionsView.avatarsImageView.setObject(2, this.parentFragment.getCurrentAccount(), null);
            this.exceptionsView.avatarsImageView.commitTransition(false);
        } else {
            int min = Math.min(3, this.exceptions.size());
            this.exceptionsView.titleView.setRightPadding(AndroidUtilities.m72dp((Math.max(0, min - 1) * 12) + 64));
            this.exceptionsView.titleView.setText(LocaleController.formatPluralString("ExceptionShort", this.exceptions.size(), Integer.valueOf(this.exceptions.size())));
            for (int i2 = 0; i2 < min; i2++) {
                this.exceptionsView.avatarsImageView.setObject(i2, this.parentFragment.getCurrentAccount(), this.parentFragment.getMessagesController().getUserOrChat(this.exceptions.get(i2).dialogId));
            }
            this.exceptionsView.avatarsImageView.commitTransition(false);
        }
        this.delete.setVisibility(8);
        this.description.setVisibility(8);
        updateAvatarsPosition();
    }

    public void updateForDialog(boolean z) {
        this.currentType = -1;
        this.gap.setVisibility(0);
        this.delete.setVisibility(z ? 8 : 0);
        this.description.setVisibility(0);
        this.exceptionsView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.KeepMediaPopupView$ExceptionsView */
    /* loaded from: classes3.dex */
    public class ExceptionsView extends FrameLayout {
        AvatarsImageView avatarsImageView;
        boolean ignoreLayout;
        SimpleTextView titleView;

        public ExceptionsView(Context context) {
            super(context);
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.titleView = simpleTextView;
            simpleTextView.setTextSize(16);
            this.titleView.setEllipsizeByGradient(true);
            this.titleView.setRightPadding(AndroidUtilities.m72dp(68));
            this.titleView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            addView(this.titleView, LayoutHelper.createFrame(0, -2, 19, 19, 0, 19, 0));
            AvatarsImageView avatarsImageView = new AvatarsImageView(context, false);
            this.avatarsImageView = avatarsImageView;
            avatarsImageView.avatarsDrawable.setShowSavedMessages(true);
            this.avatarsImageView.setStyle(11);
            this.avatarsImageView.setAvatarsTextSize(AndroidUtilities.m72dp(22));
            addView(this.avatarsImageView, LayoutHelper.createFrame(56, -1, 21, 0, 0, 4, 0));
            setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector), 0, 4));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            View view = (View) getParent();
            if (view != null && view.getWidth() > 0) {
                i = View.MeasureSpec.makeMeasureSpec(view.getWidth(), 1073741824);
            }
            this.ignoreLayout = true;
            this.titleView.setVisibility(8);
            super.onMeasure(i, i2);
            this.titleView.setVisibility(0);
            this.titleView.getLayoutParams().width = getMeasuredWidth();
            this.ignoreLayout = false;
            KeepMediaPopupView.this.updateAvatarsPosition();
            super.onMeasure(i, i2);
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAvatarsPosition() {
        if (this.exceptions != null) {
            this.exceptionsView.avatarsImageView.setTranslationX(AndroidUtilities.m72dp(12) * (3 - Math.min(3, this.exceptions.size())));
        }
    }

    /* renamed from: org.telegram.ui.KeepMediaPopupView$CheckItem */
    /* loaded from: classes3.dex */
    private static class CheckItem {
        final ActionBarMenuSubItem item;
        final int type;

        private CheckItem(ActionBarMenuSubItem actionBarMenuSubItem, int i) {
            this.item = actionBarMenuSubItem;
            this.type = i;
        }
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }
}
