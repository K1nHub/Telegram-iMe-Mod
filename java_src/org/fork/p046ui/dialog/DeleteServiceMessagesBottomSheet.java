package org.fork.p046ui.dialog;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.services.ServiceMessagesRemovingService;
import com.smedialink.utils.extentions.common.ContextExtKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.fork.enums.ServiceMessageType;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.TextCheckBoxCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
import p034j$.time.temporal.ChronoUnit;
/* compiled from: DeleteServiceMessagesBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet */
/* loaded from: classes4.dex */
public final class DeleteServiceMessagesBottomSheet extends BottomSheet {
    private final Lazy bottomButtons$delegate;
    private final Lazy buttonsLayout$delegate;
    private final long chatId;
    private boolean ignoreLayout;
    private final boolean isChannel;
    private final boolean isGroup;
    private int itemWidth;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final long migratedChatId;
    private final int migratedChatMaxMessageId;
    private int scrollOffsetY;
    private final ArrayList<Integer> selectedFiltersCodes;
    private final AnimatorSet[] shadowAnimation;
    private final Lazy shadows$delegate;
    private final Lazy titleTextView$delegate;
    private final int topicId;

    /* compiled from: DeleteServiceMessagesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ServiceMessageType.values().length];
            iArr[ServiceMessageType.CHAT_CREATED.ordinal()] = 1;
            iArr[ServiceMessageType.TITLE_EDITED.ordinal()] = 2;
            iArr[ServiceMessageType.PHOTO_CHANGED.ordinal()] = 3;
            iArr[ServiceMessageType.PHOTO_DELETED.ordinal()] = 4;
            iArr[ServiceMessageType.USER_ADDED.ordinal()] = 5;
            iArr[ServiceMessageType.USER_LEFT.ordinal()] = 6;
            iArr[ServiceMessageType.USER_JOINED_LINK.ordinal()] = 7;
            iArr[ServiceMessageType.MESSAGE_PINNED.ordinal()] = 8;
            iArr[ServiceMessageType.GAME_SCORE.ordinal()] = 9;
            iArr[ServiceMessageType.PAYMENT_SENT.ordinal()] = 10;
            iArr[ServiceMessageType.SCREENSHOT_TAKEN.ordinal()] = 11;
            iArr[ServiceMessageType.GEO_PROXIMITY_REACHED.ordinal()] = 12;
            iArr[ServiceMessageType.GROUP_CALL.ordinal()] = 13;
            iArr[ServiceMessageType.GROUP_CALL_SCHEDULED.ordinal()] = 14;
            iArr[ServiceMessageType.GROUP_CALL_INVITE.ordinal()] = 15;
            iArr[ServiceMessageType.TTL_CHANGE.ordinal()] = 16;
            iArr[ServiceMessageType.SET_MESSAGES_TTL.ordinal()] = 17;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteServiceMessagesBottomSheet(Context context, boolean z, boolean z2, long j, int i, long j2, int i2) {
        super(context, false);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Intrinsics.checkNotNullParameter(context, "context");
        this.isGroup = z;
        lazy = LazyKt__LazyJVMKt.lazy(new DeleteServiceMessagesBottomSheet$titleTextView$2(this));
        this.titleTextView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new DeleteServiceMessagesBottomSheet$shadows$2(this));
        this.shadows$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new DeleteServiceMessagesBottomSheet$listView$2(this));
        this.listView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new DeleteServiceMessagesBottomSheet$listAdapter$2(this, context));
        this.listAdapter$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new DeleteServiceMessagesBottomSheet$bottomButtons$2(this));
        this.bottomButtons$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new DeleteServiceMessagesBottomSheet$buttonsLayout$2(this));
        this.buttonsLayout$delegate = lazy6;
        this.shadowAnimation = new AnimatorSet[2];
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.selectedFiltersCodes = arrayList;
        boolean z3 = (z || z2) ? false : true;
        this.isChannel = z3;
        this.chatId = j;
        this.topicId = i;
        this.migratedChatId = j2;
        this.migratedChatMaxMessageId = i2;
        arrayList.add(Integer.valueOf(ServiceMessageType.ALL.getCode(z3)));
        CustomContainerView customContainerView = new CustomContainerView(this, context);
        customContainerView.addView(getShadows()[0], LayoutHelper.createFrame(-1, 1, 3, 0, 56, 0, 0));
        customContainerView.addView(getListView(), LayoutHelper.createFrame(-1, -1, 51, 0, 56, 0, 48));
        customContainerView.addView(getTitleTextView(), LayoutHelper.createFrame(-1, 56, 51));
        customContainerView.addView(getShadows()[1], LayoutHelper.createFrame(-1, 1, 83, 0, 0, 0, 48));
        customContainerView.addView(getButtonsLayout(), LayoutHelper.createFrame(-1, 48, 83));
        Unit unit = Unit.INSTANCE;
        this.containerView = customContainerView;
    }

    private final TextView getTitleTextView() {
        return (TextView) this.titleTextView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View[] getShadows() {
        return (View[]) this.shadows$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DeleteServiceMessagesBottomSheet$initListView$1 getListView() {
        return (DeleteServiceMessagesBottomSheet$initListView$1) this.listView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ServiceMessagesTypesAdapter getListAdapter() {
        return (ServiceMessagesTypesAdapter) this.listAdapter$delegate.getValue();
    }

    private final TextView[] getBottomButtons() {
        return (TextView[]) this.bottomButtons$delegate.getValue();
    }

    private final FrameLayout getButtonsLayout() {
        return (FrameLayout) this.buttonsLayout$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTitleTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.withMediumTypeface(textView);
        ViewExtKt.singleLine(textView);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(16);
        textView.setText(LocaleController.getInternalString(C3158R.string.service_messages));
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        textView.setTextSize(1, 20.0f);
        textView.setLinkTextColor(Theme.getColor("dialogTextLink"));
        ViewExtKt.setHorizontalPadding(textView, 18);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View[] initShadows() {
        View view = new View(getContext());
        ViewExtKt.invisible(view);
        view.setTag(1);
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        view.setBackgroundColor(Theme.getColor("dialogShadowLine"));
        Unit unit = Unit.INSTANCE;
        View view2 = new View(getContext());
        view2.setBackgroundColor(Theme.getColor("dialogShadowLine"));
        return new View[]{view, view2};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$initListView$1, android.view.View, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, org.telegram.ui.Components.RecyclerListView] */
    public final DeleteServiceMessagesBottomSheet$initListView$1 initListView() {
        final Context context = getContext();
        ?? r1 = new RecyclerListView(context) { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$initListView$1
            @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (DeleteServiceMessagesBottomSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(r1, AndroidUtilities.m50dp(10));
        r1.setLayoutManager(new LinearLayoutManager(r1.getContext()));
        r1.setAdapter(getListAdapter());
        r1.setVerticalScrollBarEnabled(false);
        r1.setClipToPadding(false);
        r1.setEnabled(true);
        r1.getRecycledViewPool().setMaxRecycledViews(IdFabric$ViewTypes.TEXT_CHECK_BOX, 0);
        r1.setGlowColor(Theme.getColor("dialogScrollGlow"));
        r1.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$initListView$2$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                DeleteServiceMessagesBottomSheet.this.updateLayout();
            }
        });
        r1.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                DeleteServiceMessagesBottomSheet.m1977initListView$lambda5$lambda4(DeleteServiceMessagesBottomSheet.this, view, i);
            }
        });
        return r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListView$lambda-5$lambda-4  reason: not valid java name */
    public static final void m1977initListView$lambda5$lambda4(DeleteServiceMessagesBottomSheet this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.toggleCheckbox();
            this$0.selectedFiltersCodes.clear();
            if (textCheckCell.isChecked()) {
                this$0.selectedFiltersCodes.add(Integer.valueOf(ServiceMessageType.ALL.getCode(this$0.isChannel)));
            }
            TextView textView = this$0.getBottomButtons()[1];
            if (textView != null) {
                textView.setEnabled(!this$0.selectedFiltersCodes.isEmpty());
            }
        } else if (view instanceof TextCheckBoxCell) {
            TextCheckBoxCell textCheckBoxCell = (TextCheckBoxCell) view;
            textCheckBoxCell.setChecked(!textCheckBoxCell.isChecked());
            if (textCheckBoxCell.isChecked()) {
                this$0.selectedFiltersCodes.add(Integer.valueOf(i - 1));
            } else if (this$0.selectedFiltersCodes.contains(Integer.valueOf(ServiceMessageType.ALL.getCode(this$0.isChannel)))) {
                this$0.selectedFiltersCodes.clear();
                ServiceMessageType[] values = ServiceMessageType.Companion.getValues(this$0.isChannel);
                int i2 = 0;
                int length = values.length;
                while (i2 < length) {
                    ServiceMessageType serviceMessageType = values[i2];
                    i2++;
                    if (serviceMessageType.getCode(this$0.isChannel) != i - 1 && serviceMessageType != ServiceMessageType.ALL) {
                        this$0.selectedFiltersCodes.add(Integer.valueOf(serviceMessageType.getCode(this$0.isChannel)));
                    }
                }
            } else {
                this$0.selectedFiltersCodes.remove(Integer.valueOf(i - 1));
            }
            if (this$0.isSelectAllEnabled()) {
                this$0.selectedFiltersCodes.clear();
                this$0.selectedFiltersCodes.add(Integer.valueOf(ServiceMessageType.ALL.getCode(this$0.isChannel)));
            }
            TextView textView2 = this$0.getBottomButtons()[1];
            if (textView2 != null) {
                textView2.setEnabled(!this$0.selectedFiltersCodes.isEmpty());
            }
        }
        this$0.getListAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initButtonsLayout() {
        final FrameLayout frameLayout = new FrameLayout(getContext());
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(frameLayout, AndroidUtilities.m50dp(8));
        frameLayout.setBackgroundColor(Theme.getColor("dialogBackground"));
        TextView[] bottomButtons = getBottomButtons();
        int length = bottomButtons.length;
        int i = 0;
        while (i < length) {
            TextView textView = bottomButtons[i];
            i++;
            Intrinsics.checkNotNull(textView);
            Object tag = textView.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.Int");
            frameLayout.addView(textView, LayoutHelper.createFrameRelatively(-2.0f, 36.0f, (((Integer) tag).intValue() == 0 ? 3 : 5) | 16));
        }
        if (!ViewCompat.isLaidOut(frameLayout) || frameLayout.isLayoutRequested()) {
            frameLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$initButtonsLayout$lambda-7$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    DeleteServiceMessagesBottomSheet.this.getShadows()[1].setBottom(frameLayout.getTop());
                }
            });
        } else {
            getShadows()[1].setBottom(frameLayout.getTop());
        }
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateLayout() {
        if (getListView().getChildCount() <= 0) {
            setScrollOffsetY(getListView().getPaddingTop());
            return;
        }
        int i = 0;
        View childAt = getListView().getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) getListView().findContainingViewHolder(childAt);
        int top = childAt.getTop();
        if (top >= 0 && holder != null && holder.getAdapterPosition() == 0) {
            runShadowAnimation(false);
            i = top;
        } else {
            runShadowAnimation(true);
        }
        if (this.scrollOffsetY != i) {
            setScrollOffsetY(i);
        }
    }

    private final void setScrollOffsetY(int i) {
        this.scrollOffsetY = i;
        getListView().setTopGlowOffset(i);
        float f = i;
        getTitleTextView().setTranslationY(f);
        getShadows()[0].setTranslationY(f);
        this.containerView.invalidate();
    }

    private final void runShadowAnimation(final boolean z) {
        if ((!z || getShadows()[0].getTag() == null) && (z || getShadows()[0].getTag() != null)) {
            return;
        }
        getShadows()[0].setTag(z ? null : 1);
        if (z) {
            ViewExtKt.visible(getShadows()[0]);
        }
        AnimatorSet animatorSet = this.shadowAnimation[0];
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet[] animatorSetArr = this.shadowAnimation;
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(150L);
        Animator[] animatorArr = new Animator[1];
        View view = getShadows()[0];
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
        animatorSet2.playTogether(animatorArr);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                AnimatorSet[] animatorSetArr2;
                AnimatorSet[] animatorSetArr3;
                AnimatorSet[] animatorSetArr4;
                Intrinsics.checkNotNullParameter(animation, "animation");
                animatorSetArr2 = DeleteServiceMessagesBottomSheet.this.shadowAnimation;
                if (animatorSetArr2[0] != null) {
                    animatorSetArr3 = DeleteServiceMessagesBottomSheet.this.shadowAnimation;
                    if (Intrinsics.areEqual(animatorSetArr3[0], animation)) {
                        if (!z) {
                            ViewExtKt.invisible(DeleteServiceMessagesBottomSheet.this.getShadows()[0]);
                        }
                        animatorSetArr4 = DeleteServiceMessagesBottomSheet.this.shadowAnimation;
                        animatorSetArr4[0] = null;
                    }
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                AnimatorSet[] animatorSetArr2;
                AnimatorSet[] animatorSetArr3;
                AnimatorSet[] animatorSetArr4;
                Intrinsics.checkNotNullParameter(animation, "animation");
                animatorSetArr2 = DeleteServiceMessagesBottomSheet.this.shadowAnimation;
                if (animatorSetArr2[0] != null) {
                    animatorSetArr3 = DeleteServiceMessagesBottomSheet.this.shadowAnimation;
                    if (Intrinsics.areEqual(animatorSetArr3[0], animation)) {
                        animatorSetArr4 = DeleteServiceMessagesBottomSheet.this.shadowAnimation;
                        animatorSetArr4[0] = null;
                    }
                }
            }
        });
        animatorSet2.start();
        Unit unit = Unit.INSTANCE;
        animatorSetArr[0] = animatorSet2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showPeriodSelectionDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(LocaleController.getInternalString(C3158R.string.erasing_period));
        ErasingPeriod[] values = ErasingPeriod.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (ErasingPeriod erasingPeriod : values) {
            arrayList.add(LocaleController.getInternalString(erasingPeriod.getStringRes()));
        }
        Object[] array = arrayList.toArray(new CharSequence[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DeleteServiceMessagesBottomSheet.m1978showPeriodSelectionDialog$lambda10(DeleteServiceMessagesBottomSheet.this, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showPeriodSelectionDialog$lambda-10  reason: not valid java name */
    public static final void m1978showPeriodSelectionDialog$lambda10(DeleteServiceMessagesBottomSheet this$0, DialogInterface dialogInterface, int i) {
        int period;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int seconds = (int) TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        ErasingPeriod byCode = ErasingPeriod.Companion.getByCode(i);
        if (byCode == ErasingPeriod.ALL_TIME) {
            period = byCode.getPeriod();
        } else {
            period = seconds - byCode.getPeriod();
        }
        ApplicationLoader.applicationContext.startService(this$0.getServiceMessagesRemovingServiceIntent(period));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView[] getBottomDialogButtons(final Runnable runnable) {
        String string;
        int m50dp = AndroidUtilities.m50dp(64);
        int m50dp2 = AndroidUtilities.m50dp(10);
        int color = Theme.getColor("dialogButton");
        Typeface typeface = AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM);
        TextView[] textViewArr = new TextView[2];
        int i = 0;
        while (true) {
            int i2 = i + 1;
            final Context context = getContext();
            AppCompatTextView appCompatTextView = new AppCompatTextView(context) { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$getBottomDialogButtons$1
                @Override // android.widget.TextView, android.view.View
                public void setEnabled(boolean z) {
                    super.setEnabled(z);
                    setAlpha(z ? 1.0f : 0.5f);
                }

                @Override // android.widget.TextView
                public void setTextColor(int i3) {
                    super.setTextColor(i3);
                    setBackground(Theme.getRoundRectSelectorDrawable(i3));
                }
            };
            com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(appCompatTextView, m50dp2);
            appCompatTextView.setTag(Integer.valueOf(i));
            appCompatTextView.setGravity(17);
            appCompatTextView.setTypeface(typeface);
            appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView.setSingleLine(true);
            appCompatTextView.setBackground(Theme.getRoundRectSelectorDrawable(color));
            if (i == 0) {
                string = LocaleController.getString("Cancel", C3158R.string.Cancel);
            } else {
                string = LocaleController.getString("Delete", C3158R.string.Delete);
            }
            Intrinsics.checkNotNullExpressionValue(string, "when (i) {\n             …Delete)\n                }");
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
            String upperCase = string.toUpperCase(locale);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            appCompatTextView.setText(upperCase);
            appCompatTextView.setMinWidth(m50dp);
            appCompatTextView.setTextSize(1, 14);
            appCompatTextView.setTextColor(color);
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DeleteServiceMessagesBottomSheet.m1976getBottomDialogButtons$lambda12$lambda11(runnable, this, view);
                }
            });
            Unit unit = Unit.INSTANCE;
            textViewArr[i] = appCompatTextView;
            if (i2 > 1) {
                return textViewArr;
            }
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getBottomDialogButtons$lambda-12$lambda-11  reason: not valid java name */
    public static final void m1976getBottomDialogButtons$lambda12$lambda11(Runnable onFiltersSelectionConfirmedAction, DeleteServiceMessagesBottomSheet this$0, View v) {
        Intrinsics.checkNotNullParameter(onFiltersSelectionConfirmedAction, "$onFiltersSelectionConfirmedAction");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(v, "v");
        if (AndroidUtilities.isServiceRunning(ServiceMessagesRemovingService.class)) {
            String internalString = LocaleController.getInternalString(C3158R.string.already_removing);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.already_removing)");
            ContextExtKt.toast(internalString);
            return;
        }
        Object tag = v.getTag();
        Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.Int");
        if (((Integer) tag).intValue() != 0) {
            onFiltersSelectionConfirmedAction.run();
        }
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getServiceMessageTypeStringByCode(int i) {
        String string;
        String replace$default;
        String text;
        switch (WhenMappings.$EnumSwitchMapping$0[ServiceMessageType.Companion.getByCode(i, this.isChannel).ordinal()]) {
            case 1:
                string = LocaleController.getString("ActionCreateGroup", C3158R.string.ActionCreateGroup);
                break;
            case 2:
                if (this.isChannel) {
                    string = LocaleController.getString("ActionChannelChangedTitle", C3158R.string.ActionChannelChangedTitle);
                    break;
                } else {
                    string = LocaleController.getString("ActionChangedTitle", C3158R.string.ActionChangedTitle);
                    break;
                }
            case 3:
                if (this.isChannel) {
                    string = LocaleController.getString("ActionChannelChangedPhoto", C3158R.string.ActionChannelChangedPhoto);
                    break;
                } else {
                    string = LocaleController.getString("ActionChangedPhoto", C3158R.string.ActionChangedPhoto);
                    break;
                }
            case 4:
                if (this.isChannel) {
                    string = LocaleController.getString("ActionChannelRemovedPhoto", C3158R.string.ActionChannelRemovedPhoto);
                    break;
                } else {
                    string = LocaleController.getString("ActionRemovedPhoto", C3158R.string.ActionRemovedPhoto);
                    break;
                }
            case 5:
                string = LocaleController.formatStringInternal(C3158R.string.service_messages_variants, LocaleController.getString("ActionAddUserSelfMega", C3158R.string.ActionAddUserSelfMega), LocaleController.getString("ActionAddUser", C3158R.string.ActionAddUser));
                break;
            case 6:
                string = LocaleController.getString("ActionLeftUser", C3158R.string.ActionLeftUser);
                break;
            case 7:
                string = LocaleController.getString("ActionInviteUser", C3158R.string.ActionInviteUser);
                break;
            case 8:
                string = LocaleController.getString("ActionPinnedNoText", C3158R.string.ActionPinnedNoText);
                break;
            case 9:
                string = LocaleController.formatString("ActionUserScored", C3158R.string.ActionUserScored, "...");
                break;
            case 10:
                string = LocaleController.formatString("PaymentSuccessfullyPaid", C3158R.string.PaymentSuccessfullyPaid, "...", "...", "...");
                break;
            case 11:
                string = LocaleController.getString("ActionTakeScreenshoot", C3158R.string.ActionTakeScreenshoot);
                break;
            case 12:
                string = LocaleController.formatString("ActionUserWithinRadius", C3158R.string.ActionUserWithinRadius, "...");
                break;
            case 13:
                if (this.isChannel) {
                    string = LocaleController.formatStringInternal(C3158R.string.service_messages_variants, LocaleController.getString("ActionGroupCallJustStarted", C3158R.string.ActionGroupCallStarted), LocaleController.formatString("ActionChannelCallEnded", C3158R.string.ActionChannelCallEnded, "..."));
                    break;
                } else {
                    string = LocaleController.formatStringInternal(C3158R.string.service_messages_variants, LocaleController.getString("ActionGroupCallStarted", C3158R.string.ActionGroupCallStarted), LocaleController.formatString("ActionGroupCallEndedBy", C3158R.string.ActionGroupCallEndedBy, "..."));
                    break;
                }
            case 14:
                string = LocaleController.formatString("ActionGroupCallScheduled", C3158R.string.ActionGroupCallScheduled, "...");
                break;
            case 15:
                string = LocaleController.getString("ActionGroupCallInvited", C3158R.string.ActionGroupCallInvited);
                break;
            case 16:
                string = LocaleController.formatString("MessageLifetimeChanged", C3158R.string.MessageLifetimeChanged, "...", "...");
                break;
            case 17:
                if (this.isChannel) {
                    string = LocaleController.getString("ActionTTLChannelChanged", C3158R.string.ActionTTLChannelChanged);
                    break;
                } else {
                    string = LocaleController.formatString("ActionTTLChanged", C3158R.string.ActionTTLChanged, "...");
                    break;
                }
            default:
                string = "";
                break;
        }
        String text2 = string;
        Intrinsics.checkNotNullExpressionValue(text2, "text");
        replace$default = StringsKt__StringsJVMKt.replace$default(text2, "un1", "...", false, 4, (Object) null);
        text = StringsKt__StringsJVMKt.replace$default(replace$default, "un2", "...", false, 4, (Object) null);
        Intrinsics.checkNotNullExpressionValue(text, "text");
        String substring = text.substring(0, 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        String upperCase = substring.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        Intrinsics.checkNotNullExpressionValue(text, "text");
        String substring2 = text.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
        return Intrinsics.stringPlus(upperCase, substring2);
    }

    private final Intent getServiceMessagesRemovingServiceIntent(int i) {
        Intent intent = new Intent(ApplicationLoader.applicationContext, ServiceMessagesRemovingService.class);
        intent.putExtra("chat_id", this.chatId);
        intent.putExtra("topic_id", this.topicId);
        intent.putExtra("migrated_chat_id", this.migratedChatId);
        intent.putExtra("migrated_chat_max_message_id", this.migratedChatMaxMessageId);
        intent.putExtra("is_channel", this.isChannel);
        intent.putExtra("is_group", this.isGroup);
        intent.putExtra("min_date", i);
        intent.putIntegerArrayListExtra("selected_filters_codes", this.selectedFiltersCodes);
        return intent;
    }

    private final boolean isSelectAllEnabled() {
        boolean z = true;
        int i = 0;
        while (true) {
            ServiceMessageType.Companion companion = ServiceMessageType.Companion;
            if (i >= companion.getValues(this.isChannel).length || !z) {
                break;
            }
            ServiceMessageType serviceMessageType = companion.getValues(this.isChannel)[i];
            if (serviceMessageType != ServiceMessageType.ALL) {
                z = this.selectedFiltersCodes.contains(Integer.valueOf(serviceMessageType.getCode(this.isChannel)));
            }
            i++;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum DAY uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* compiled from: DeleteServiceMessagesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$ErasingPeriod */
    /* loaded from: classes4.dex */
    public static final class ErasingPeriod {
        public static final ErasingPeriod DAY;
        public static final ErasingPeriod MONTH;
        public static final ErasingPeriod WEEK;
        public static final ErasingPeriod YEAR;
        private final int code;
        private final int period;
        private final int stringRes;
        public static final ErasingPeriod ALL_TIME = new ErasingPeriod("ALL_TIME", 4, 4, 0, C3158R.string.period_all_time);
        private static final /* synthetic */ ErasingPeriod[] $VALUES = $values();
        public static final Companion Companion = new Companion(null);

        private static final /* synthetic */ ErasingPeriod[] $values() {
            return new ErasingPeriod[]{DAY, WEEK, MONTH, YEAR, ALL_TIME};
        }

        public static ErasingPeriod valueOf(String str) {
            return (ErasingPeriod) Enum.valueOf(ErasingPeriod.class, str);
        }

        public static ErasingPeriod[] values() {
            return (ErasingPeriod[]) $VALUES.clone();
        }

        private ErasingPeriod(String str, int i, int i2, int i3, int i4) {
            this.code = i2;
            this.period = i3;
            this.stringRes = i4;
        }

        public final int getPeriod() {
            return this.period;
        }

        public final int getStringRes() {
            return this.stringRes;
        }

        static {
            long j = 1000;
            DAY = new ErasingPeriod("DAY", 0, 0, (int) (ChronoUnit.DAYS.getDuration().toMillis() / j), C3158R.string.period_last_day);
            WEEK = new ErasingPeriod("WEEK", 1, 1, (int) (ChronoUnit.WEEKS.getDuration().toMillis() / j), C3158R.string.period_last_week);
            MONTH = new ErasingPeriod("MONTH", 2, 2, (int) (ChronoUnit.MONTHS.getDuration().toMillis() / j), C3158R.string.period_last_month);
            YEAR = new ErasingPeriod("YEAR", 3, 3, (int) (ChronoUnit.YEARS.getDuration().toMillis() / j), C3158R.string.period_last_year);
        }

        /* compiled from: DeleteServiceMessagesBottomSheet.kt */
        /* renamed from: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion */
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final ErasingPeriod getByCode(int i) {
                ErasingPeriod erasingPeriod = ErasingPeriod.ALL_TIME;
                ErasingPeriod[] values = ErasingPeriod.values();
                int length = values.length;
                int i2 = 0;
                while (i2 < length) {
                    ErasingPeriod erasingPeriod2 = values[i2];
                    i2++;
                    if (erasingPeriod2.code == i) {
                        erasingPeriod = erasingPeriod2;
                    }
                }
                return erasingPeriod;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeleteServiceMessagesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter */
    /* loaded from: classes4.dex */
    public final class ServiceMessagesTypesAdapter extends RecyclerListView.SelectionAdapter {
        private final Context context;
        final /* synthetic */ DeleteServiceMessagesBottomSheet this$0;

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return true;
        }

        public ServiceMessagesTypesAdapter(DeleteServiceMessagesBottomSheet this$0, Context context) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = this$0;
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ServiceMessageType.Companion.getValues(this.this$0.isChannel).length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return IdFabric$ViewTypes.TEXT_CHECK;
            }
            return IdFabric$ViewTypes.TEXT_CHECK_BOX;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            View view;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK) {
                final Context context = this.context;
                final DeleteServiceMessagesBottomSheet deleteServiceMessagesBottomSheet = this.this$0;
                view = new TextCheckCell(context) { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter$onCreateViewHolder$1
                    @Override // org.telegram.p048ui.Cells.TextCheckCell, android.widget.FrameLayout, android.view.View
                    public void onMeasure(int i2, int i3) {
                        int i4;
                        i4 = DeleteServiceMessagesBottomSheet.this.itemWidth;
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(100), 1073741824));
                    }
                };
            } else {
                final Context context2 = this.context;
                final DeleteServiceMessagesBottomSheet deleteServiceMessagesBottomSheet2 = this.this$0;
                view = new TextCheckBoxCell(context2) { // from class: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter$onCreateViewHolder$2
                    @Override // org.telegram.p048ui.Cells.TextCheckBoxCell, android.widget.FrameLayout, android.view.View
                    public void onMeasure(int i2, int i3) {
                        int i4;
                        i4 = DeleteServiceMessagesBottomSheet.this.itemWidth;
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(100), 1073741824));
                    }
                };
            }
            return new RecyclerListView.Holder(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            int lastIndex;
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = holder.getItemViewType();
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK && (view instanceof TextCheckCell)) {
                ((TextCheckCell) view).setTextAndCheck(LocaleController.getInternalString(C3158R.string.service_messages_all), this.this$0.selectedFiltersCodes.contains(Integer.valueOf(ServiceMessageType.ALL.getCode(this.this$0.isChannel))), true);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_BOX && (view instanceof TextCheckBoxCell)) {
                TextCheckBoxCell textCheckBoxCell = (TextCheckBoxCell) view;
                int i2 = i - 1;
                String serviceMessageTypeStringByCode = this.this$0.getServiceMessageTypeStringByCode(i2);
                boolean z = this.this$0.selectedFiltersCodes.contains(Integer.valueOf(i2)) || this.this$0.selectedFiltersCodes.contains(Integer.valueOf(ServiceMessageType.ALL.getCode(this.this$0.isChannel)));
                lastIndex = ArraysKt___ArraysKt.getLastIndex(ServiceMessageType.Companion.getValues(this.this$0.isChannel));
                textCheckBoxCell.setTextAndCheck(serviceMessageTypeStringByCode, z, i != lastIndex);
            }
        }
    }

    /* compiled from: DeleteServiceMessagesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$CustomContainerView */
    /* loaded from: classes4.dex */
    public final class CustomContainerView extends FrameLayout {
        private boolean fullHeight;
        private int lastNotifyWidth;
        private final RectF rect;
        final /* synthetic */ DeleteServiceMessagesBottomSheet this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomContainerView(DeleteServiceMessagesBottomSheet this$0, Context context) {
            super(context);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = this$0;
            this.rect = new RectF();
            setWillNotDraw(false);
            com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(this, ((BottomSheet) this$0).backgroundPaddingLeft);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            Intrinsics.checkNotNullParameter(ev, "ev");
            if (ev.getAction() == 0 && this.this$0.scrollOffsetY != 0 && ev.getY() < this.this$0.scrollOffsetY) {
                this.this$0.dismiss();
                return true;
            }
            return super.onInterceptTouchEvent(ev);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return !this.this$0.isDismissed() && super.onTouchEvent(e);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i2);
            this.this$0.ignoreLayout = true;
            setPadding(((BottomSheet) this.this$0).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) this.this$0).backgroundPaddingLeft, 0);
            this.this$0.ignoreLayout = false;
            this.this$0.itemWidth = View.MeasureSpec.getSize(i) - AndroidUtilities.m50dp(16);
            int m50dp = AndroidUtilities.m50dp(118) + (ServiceMessageType.Companion.getValues(this.this$0.isChannel).length * AndroidUtilities.m50dp(100)) + ((BottomSheet) this.this$0).backgroundPaddingTop + AndroidUtilities.statusBarHeight;
            int i3 = ((double) m50dp) < ((double) (((float) size) / 5.0f)) * 3.2d ? 0 : (size / 5) * 2;
            if (i3 != 0 && m50dp < size) {
                i3 -= size - m50dp;
            }
            if (i3 == 0) {
                i3 = ((BottomSheet) this.this$0).backgroundPaddingTop;
            }
            if (this.this$0.getListView().getPaddingTop() != i3) {
                this.this$0.ignoreLayout = true;
                this.this$0.getListView().setPadding(0, i3, 0, 14);
                this.this$0.ignoreLayout = false;
            }
            this.fullHeight = m50dp >= size;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(m50dp, size), 1073741824));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            if (this.lastNotifyWidth != i5) {
                this.lastNotifyWidth = i5;
                this.this$0.getListAdapter().notifyDataSetChanged();
            }
            super.onLayout(z, i, i2, i3, i4);
            this.this$0.updateLayout();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.this$0.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00b3  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0143  */
        /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r12) {
            /*
                Method dump skipped, instructions count: 398
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.fork.p046ui.dialog.DeleteServiceMessagesBottomSheet.CustomContainerView.onDraw(android.graphics.Canvas):void");
        }
    }

    /* compiled from: DeleteServiceMessagesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.DeleteServiceMessagesBottomSheet$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
