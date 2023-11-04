package org.telegram.p043ui.Components.Premium.boosts;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Point;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.DefaultLoadControl;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.NumberPicker;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.StatisticActivity;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway;
import org.telegram.tgnet.TLRPC$TL_payments_giveawayInfo;
import org.telegram.tgnet.TLRPC$TL_payments_giveawayInfoResults;
import org.telegram.tgnet.TLRPC$TL_premiumGiftCodeOption;
import org.telegram.tgnet.TLRPC$payments_GiveawayInfo;
/* renamed from: org.telegram.ui.Components.Premium.boosts.BoostDialogs */
/* loaded from: classes6.dex */
public class BoostDialogs {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkReduceQuantity$13(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkReduceUsers$11(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showAbout$14(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showAboutEnd$15(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showAboutEnd$16(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showAboutEnd$17(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showAboutEnd$18(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBulletinAbout$27(TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$showDatePicker$3(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showMoreBoostsNeeded$28(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showPrivateChannelAlert$20(DialogInterface dialogInterface, int i) {
    }

    public static long getThreeDaysAfterToday() {
        return roundByFiveMinutes(new Date().getTime() + 259200000);
    }

    public static void showToastError(Context context, TLRPC$TL_error tLRPC$TL_error) {
        String str;
        if (tLRPC$TL_error == null || (str = tLRPC$TL_error.text) == null || TextUtils.isEmpty(str)) {
            return;
        }
        Toast.makeText(context, tLRPC$TL_error.text, 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBulletin$1(BulletinFactory bulletinFactory, boolean z, final TLRPC$Chat tLRPC$Chat, Theme.ResourcesProvider resourcesProvider) {
        String string;
        String string2;
        int i = C3634R.raw.star_premium_2;
        if (z) {
            string = LocaleController.getString("BoostingGiveawayCreated", C3634R.string.BoostingGiveawayCreated);
        } else {
            string = LocaleController.getString("BoostingAwardsCreated", C3634R.string.BoostingAwardsCreated);
        }
        if (z) {
            string2 = LocaleController.getString("BoostingCheckStatistic", C3634R.string.BoostingCheckStatistic);
        } else {
            string2 = LocaleController.getString("BoostingCheckGiftsStatistic", C3634R.string.BoostingCheckGiftsStatistic);
        }
        bulletinFactory.createSimpleBulletin(i, string, AndroidUtilities.replaceSingleTag(string2, Theme.key_undo_cancelColor, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                BoostDialogs.lambda$showBulletin$0(TLRPC$Chat.this);
            }
        }, resourcesProvider)).setDuration(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).show();
    }

    private static void showBulletin(final BulletinFactory bulletinFactory, final Theme.ResourcesProvider resourcesProvider, final TLRPC$Chat tLRPC$Chat, final boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                BoostDialogs.lambda$showBulletin$1(BulletinFactory.this, z, tLRPC$Chat, resourcesProvider);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBulletin$0(TLRPC$Chat tLRPC$Chat) {
        if (tLRPC$Chat != null) {
            Bundle bundle = new Bundle();
            bundle.putLong("chat_id", tLRPC$Chat.f1602id);
            bundle.putBoolean("is_megagroup", tLRPC$Chat.megagroup);
            bundle.putBoolean("start_from_boosts", true);
            bundle.putBoolean("only_boosts", true);
            StatisticActivity statisticActivity = new StatisticActivity(bundle);
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            LaunchActivity.getLastFragment().showAsSheet(statisticActivity, bottomSheetParams);
        }
    }

    public static void showGiftLinkForwardedBulletin(long j) {
        final SpannableStringBuilder replaceTags;
        if (j == UserConfig.getInstance(UserConfig.selectedAccount).clientUserId) {
            replaceTags = AndroidUtilities.replaceTags(LocaleController.getString("BoostingGiftLinkForwardedToSavedMsg", C3634R.string.BoostingGiftLinkForwardedToSavedMsg));
        } else if (DialogObject.isChatDialog(j)) {
            replaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGiftLinkForwardedTo", C3634R.string.BoostingGiftLinkForwardedTo, MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-j)).title));
        } else {
            replaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGiftLinkForwardedTo", C3634R.string.BoostingGiftLinkForwardedTo, UserObject.getFirstName(MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j)))));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                BoostDialogs.lambda$showGiftLinkForwardedBulletin$2(replaceTags);
            }
        }, 450L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showGiftLinkForwardedBulletin$2(CharSequence charSequence) {
        BulletinFactory global = BulletinFactory.global();
        if (global != null) {
            global.createSimpleBulletinWithIconSize(C3634R.raw.forward, charSequence, 30).show();
        }
    }

    public static void showBulletin(FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider, TLRPC$Chat tLRPC$Chat, boolean z) {
        showBulletin(BulletinFactory.m63of(frameLayout, resourcesProvider), resourcesProvider, tLRPC$Chat, z);
    }

    public static void showBulletin(BaseFragment baseFragment, TLRPC$Chat tLRPC$Chat, boolean z) {
        showBulletin(BulletinFactory.m62of(baseFragment), baseFragment.getResourceProvider(), tLRPC$Chat, z);
    }

    private static long roundByFiveMinutes(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        calendar.set(14, 0);
        calendar.set(13, 0);
        int i = calendar.get(12);
        while (i % 5 != 0) {
            i++;
        }
        calendar.set(12, i);
        return calendar.getTimeInMillis();
    }

    public static void showDatePicker(Context context, long j, final AlertsCreator.ScheduleDatePickerDelegate scheduleDatePickerDelegate, Theme.ResourcesProvider resourcesProvider) {
        AlertsCreator.ScheduleDatePickerColors scheduleDatePickerColors = new AlertsCreator.ScheduleDatePickerColors(resourcesProvider);
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setTextOffset(AndroidUtilities.m104dp(10));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs.1
            @Override // org.telegram.p043ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Hours", i, new Object[0]);
            }
        };
        numberPicker2.setWrapSelectorWheel(true);
        numberPicker2.setAllItemsCount(24);
        numberPicker2.setItemCount(5);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setTextOffset(-AndroidUtilities.m104dp(10));
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs.2
            @Override // org.telegram.p043ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Minutes", i, new Object[0]);
            }
        };
        numberPicker3.setWrapSelectorWheel(true);
        numberPicker3.setAllItemsCount(60);
        numberPicker3.setItemCount(5);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setTextOffset(-AndroidUtilities.m104dp(34));
        final LinearLayout linearLayout = new LinearLayout(context, scheduleDatePickerColors, numberPicker, numberPicker2, numberPicker3) { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs.3
            boolean ignoreLayout = false;
            final TextPaint paint;
            final /* synthetic */ AlertsCreator.ScheduleDatePickerColors val$datePickerColors;
            final /* synthetic */ NumberPicker val$dayPicker;
            final /* synthetic */ NumberPicker val$hourPicker;
            final /* synthetic */ NumberPicker val$minutePicker;

            {
                this.val$datePickerColors = scheduleDatePickerColors;
                this.val$dayPicker = numberPicker;
                this.val$hourPicker = numberPicker2;
                this.val$minutePicker = numberPicker3;
                TextPaint textPaint = new TextPaint(1);
                this.paint = textPaint;
                setWillNotDraw(false);
                textPaint.setTextSize(AndroidUtilities.m104dp(20));
                textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                textPaint.setColor(scheduleDatePickerColors.textColor);
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                this.val$dayPicker.setItemCount(i3);
                this.val$hourPicker.setItemCount(i3);
                this.val$minutePicker.setItemCount(i3);
                this.val$dayPicker.getLayoutParams().height = AndroidUtilities.m104dp(42) * i3;
                this.val$hourPicker.getLayoutParams().height = AndroidUtilities.m104dp(42) * i3;
                this.val$minutePicker.getLayoutParams().height = AndroidUtilities.m104dp(42) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                canvas.drawText(":", this.val$hourPicker.getRight() - AndroidUtilities.m104dp(12), (getHeight() / 2.0f) - AndroidUtilities.m104dp(11), this.paint);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString("BoostingSelectDateTime", C3634R.string.BoostingSelectDateTime));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 51, 0, 12, 0, 0));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda15
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$showDatePicker$3;
                lambda$showDatePicker$3 = BoostDialogs.lambda$showDatePicker$3(view, motionEvent);
                return lambda$showDatePicker$3;
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final long currentTimeMillis = System.currentTimeMillis();
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(currentTimeMillis);
        final int i = calendar.get(1);
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs.4
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        long giveawayPeriodMax = BoostRepository.giveawayPeriodMax() * 1000;
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(giveawayPeriodMax);
        int i2 = calendar2.get(6);
        calendar2.setTimeInMillis(System.currentTimeMillis());
        calendar2.add(14, (int) giveawayPeriodMax);
        final int i3 = calendar2.get(11);
        final int i4 = calendar.get(12);
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(i2 - 1);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setTag("YEAR");
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda25
            @Override // org.telegram.p043ui.Components.NumberPicker.Formatter
            public final String format(int i5) {
                String lambda$showDatePicker$4;
                lambda$showDatePicker$4 = BoostDialogs.lambda$showDatePicker$4(currentTimeMillis, calendar, i, i5);
                return lambda$showDatePicker$4;
            }
        });
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda28
            @Override // org.telegram.p043ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i5, int i6) {
                BoostDialogs.lambda$showDatePicker$5(linearLayout, calendar, numberPicker2, numberPicker3, i3, i4, numberPicker4, i5, i6);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(23);
        linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda26
            @Override // org.telegram.p043ui.Components.NumberPicker.Formatter
            public final String format(int i5) {
                String valueOf;
                valueOf = String.valueOf(i5);
                return valueOf;
            }
        });
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(11);
        numberPicker3.setValue(0);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda27
            @Override // org.telegram.p043ui.Components.NumberPicker.Formatter
            public final String format(int i5) {
                String lambda$showDatePicker$7;
                lambda$showDatePicker$7 = BoostDialogs.lambda$showDatePicker$7(i5);
                return lambda$showDatePicker$7;
            }
        });
        linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        if (j > 0) {
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.set(11, 0);
            int timeInMillis = (int) ((j - calendar.getTimeInMillis()) / 86400000);
            calendar.setTimeInMillis(j);
            if (timeInMillis >= 0) {
                numberPicker3.setValue(calendar.get(12) / 5);
                numberPicker2.setValue(calendar.get(11));
                numberPicker.setValue(timeInMillis);
            }
        }
        textView2.setPadding(AndroidUtilities.m104dp(34), 0, AndroidUtilities.m104dp(34), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setBackground(Theme.AdaptiveRipple.filledRect(scheduleDatePickerColors.buttonBackgroundColor, 8.0f));
        textView2.setText(LocaleController.getString("BoostingConfirm", C3634R.string.BoostingConfirm));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        boolean z = true;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BoostDialogs.lambda$showDatePicker$8(calendar, numberPicker, numberPicker2, numberPicker3, scheduleDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet show = builder.show();
        show.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        show.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        Window window = show.getWindow();
        if (ColorUtils.calculateLuminance(scheduleDatePickerColors.backgroundColor) <= 0.699999988079071d) {
            z = false;
        }
        AndroidUtilities.setLightStatusBar(window, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$showDatePicker$4(long j, Calendar calendar, int i, int i2) {
        if (i2 == 0) {
            return LocaleController.getString("MessageScheduleToday", C3634R.string.MessageScheduleToday);
        }
        long j2 = j + (i2 * 86400000);
        calendar.setTimeInMillis(j2);
        if (calendar.get(1) == i) {
            return LocaleController.getInstance().formatterScheduleDay.format(j2);
        }
        return LocaleController.getInstance().formatterScheduleYear.format(j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDatePicker$5(LinearLayout linearLayout, Calendar calendar, NumberPicker numberPicker, NumberPicker numberPicker2, int i, int i2, NumberPicker numberPicker3, int i3, int i4) {
        try {
            linearLayout.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        if (numberPicker3.getTag() == null || !numberPicker3.getTag().equals("YEAR")) {
            return;
        }
        if (numberPicker3.getValue() == numberPicker3.getMinValue()) {
            Calendar.getInstance().setTimeInMillis(System.currentTimeMillis());
            int i5 = calendar.get(11);
            int i6 = calendar.get(12);
            numberPicker.setMinValue(i5);
            numberPicker2.setMinValue(Math.min((i6 / 5) + 1, 11));
        } else if (numberPicker3.getValue() == numberPicker3.getMaxValue()) {
            numberPicker.setMaxValue(i);
            numberPicker2.setMaxValue(Math.min(i2 / 5, 11));
        } else {
            numberPicker.setMinValue(0);
            numberPicker2.setMinValue(0);
            numberPicker.setMaxValue(23);
            numberPicker2.setMaxValue(11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$showDatePicker$7(int i) {
        return String.format("%02d", Integer.valueOf(i * 5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDatePicker$8(Calendar calendar, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, AlertsCreator.ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        calendar.setTimeInMillis(System.currentTimeMillis() + (numberPicker.getValue() * 24 * 3600 * 1000));
        calendar.set(11, numberPicker2.getValue());
        calendar.set(12, numberPicker3.getValue() * 5);
        scheduleDatePickerDelegate.didSelectDate(true, (int) (calendar.getTimeInMillis() / 1000), null);
        builder.getDismissRunnable().run();
    }

    public static void showUnsavedChanges(int i, Context context, Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Runnable runnable2) {
        String string;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("UnsavedChanges", C3634R.string.UnsavedChanges));
        if (i == 1) {
            string = LocaleController.getString("BoostingApplyChangesUsers", C3634R.string.BoostingApplyChangesUsers);
        } else if (i == 2) {
            string = LocaleController.getString("BoostingApplyChangesChannels", C3634R.string.BoostingApplyChangesChannels);
        } else {
            string = i != 3 ? "" : LocaleController.getString("BoostingApplyChangesCountries", C3634R.string.BoostingApplyChangesCountries);
        }
        builder.setMessage(string);
        builder.setPositiveButton(LocaleController.getString("ApplyTheme", C3634R.string.ApplyTheme), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                runnable.run();
            }
        });
        builder.setNegativeButton(LocaleController.getString("Discard", C3634R.string.Discard), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                runnable2.run();
            }
        });
        builder.show();
    }

    public static boolean checkReduceUsers(Context context, Theme.ResourcesProvider resourcesProvider, List<TLRPC$TL_premiumGiftCodeOption> list, TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption) {
        if (tLRPC$TL_premiumGiftCodeOption.store_product == null) {
            ArrayList arrayList = new ArrayList();
            for (TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption2 : list) {
                if (tLRPC$TL_premiumGiftCodeOption2.months == tLRPC$TL_premiumGiftCodeOption.months && tLRPC$TL_premiumGiftCodeOption2.store_product != null) {
                    arrayList.add(Integer.valueOf(tLRPC$TL_premiumGiftCodeOption2.users));
                }
            }
            String join = TextUtils.join(", ", arrayList);
            int i = tLRPC$TL_premiumGiftCodeOption.users;
            AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
            builder.setTitle(LocaleController.getString("BoostingReduceQuantity", C3634R.string.BoostingReduceQuantity));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingReduceUsersText", C3634R.string.BoostingReduceUsersText, Integer.valueOf(i), join)));
            builder.setPositiveButton(LocaleController.getString("OK", C3634R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda10
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    BoostDialogs.lambda$checkReduceUsers$11(dialogInterface, i2);
                }
            });
            builder.show();
            return true;
        }
        return false;
    }

    public static boolean checkReduceQuantity(Context context, Theme.ResourcesProvider resourcesProvider, List<TLRPC$TL_premiumGiftCodeOption> list, TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, final Utilities.Callback<TLRPC$TL_premiumGiftCodeOption> callback) {
        if (tLRPC$TL_premiumGiftCodeOption.store_product == null) {
            ArrayList<TLRPC$TL_premiumGiftCodeOption> arrayList = new ArrayList();
            for (TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption2 : list) {
                if (tLRPC$TL_premiumGiftCodeOption2.months == tLRPC$TL_premiumGiftCodeOption.months && tLRPC$TL_premiumGiftCodeOption2.store_product != null) {
                    arrayList.add(tLRPC$TL_premiumGiftCodeOption2);
                }
            }
            final TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption3 = (TLRPC$TL_premiumGiftCodeOption) arrayList.get(0);
            for (TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption4 : arrayList) {
                int i = tLRPC$TL_premiumGiftCodeOption.users;
                int i2 = tLRPC$TL_premiumGiftCodeOption4.users;
                if (i > i2 && i2 > tLRPC$TL_premiumGiftCodeOption3.users) {
                    tLRPC$TL_premiumGiftCodeOption3 = tLRPC$TL_premiumGiftCodeOption4;
                }
            }
            String formatPluralString = LocaleController.formatPluralString("GiftMonths", tLRPC$TL_premiumGiftCodeOption3.months, new Object[0]);
            int i3 = tLRPC$TL_premiumGiftCodeOption.users;
            int i4 = tLRPC$TL_premiumGiftCodeOption3.users;
            AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
            builder.setTitle(LocaleController.getString("BoostingReduceQuantity", C3634R.string.BoostingReduceQuantity));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingReduceQuantityText", C3634R.string.BoostingReduceQuantityText, Integer.valueOf(i3), formatPluralString, Integer.valueOf(i4))));
            builder.setPositiveButton(LocaleController.getString("Reduce", C3634R.string.Reduce), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    Utilities.Callback.this.run(tLRPC$TL_premiumGiftCodeOption3);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3634R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda11
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    BoostDialogs.lambda$checkReduceQuantity$13(dialogInterface, i5);
                }
            });
            builder.show();
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x018f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void showAbout(long r18, long r20, org.telegram.tgnet.TLRPC$TL_payments_giveawayInfo r22, org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway r23, android.content.Context r24, org.telegram.p043ui.ActionBar.Theme.ResourcesProvider r25) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Premium.boosts.BoostDialogs.showAbout(long, long, org.telegram.tgnet.TLRPC$TL_payments_giveawayInfo, org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway, android.content.Context, org.telegram.ui.ActionBar.Theme$ResourcesProvider):void");
    }

    public static void showAboutEnd(long j, long j2, TLRPC$TL_payments_giveawayInfoResults tLRPC$TL_payments_giveawayInfoResults, TLRPC$TL_messageMediaGiveaway tLRPC$TL_messageMediaGiveaway, Context context, Theme.ResourcesProvider resourcesProvider) {
        int i;
        TLRPC$Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-j));
        String str = chat != null ? chat.title : "";
        int i2 = tLRPC$TL_messageMediaGiveaway.quantity;
        String formatPluralString = LocaleController.formatPluralString("BoldMonths", tLRPC$TL_messageMediaGiveaway.months, new Object[0]);
        String format = LocaleController.getInstance().formatterGiveawayMonthDay.format(new Date(tLRPC$TL_messageMediaGiveaway.until_date * 1000));
        String format2 = LocaleController.getInstance().formatterDay.format(new Date(tLRPC$TL_payments_giveawayInfoResults.start_date * 1000));
        String format3 = LocaleController.getInstance().formatterGiveawayMonthDayYear.format(new Date(tLRPC$TL_payments_giveawayInfoResults.start_date * 1000));
        boolean z = tLRPC$TL_messageMediaGiveaway.channels.size() > 1;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("BoostingGiveawayEnd", C3634R.string.BoostingGiveawayEnd));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksText", i2, str, Integer.valueOf(i2), formatPluralString)));
        spannableStringBuilder.append((CharSequence) "\n\n");
        if (tLRPC$TL_messageMediaGiveaway.only_new_subscribers) {
            if (z) {
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextDateSeveral", i2, format, Integer.valueOf(i2), str, Integer.valueOf(tLRPC$TL_messageMediaGiveaway.channels.size() - 1), format2, format3)));
            } else {
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextDate", i2, format, Integer.valueOf(i2), str, format2, format3)));
            }
            i = 1;
        } else if (z) {
            i = 1;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextSeveral", i2, format, Integer.valueOf(i2), str, Integer.valueOf(tLRPC$TL_messageMediaGiveaway.channels.size() - 1))));
        } else {
            i = 1;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubText", i2, format, Integer.valueOf(i2), str)));
        }
        spannableStringBuilder.append((CharSequence) " ");
        int i3 = C3634R.string.BoostingGiveawayUsedLinks;
        Object[] objArr = new Object[i];
        objArr[0] = Integer.valueOf(tLRPC$TL_payments_giveawayInfoResults.activated_count);
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGiveawayUsedLinks", i3, objArr)));
        spannableStringBuilder.append((CharSequence) "\n\n");
        if (tLRPC$TL_payments_giveawayInfoResults.refunded) {
            String string = LocaleController.getString("BoostingGiveawayCanceledByPayment", C3634R.string.BoostingGiveawayCanceledByPayment);
            TextView textView = new TextView(context);
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
            textView.setTextSize(1, 16.0f);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView.setGravity(17);
            textView.setText(string);
            int i4 = Theme.key_text_RedRegular;
            textView.setTextColor(Theme.getColor(i4, resourcesProvider));
            textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m104dp(10), AndroidUtilities.m104dp(10), Theme.multAlpha(Theme.getColor(i4, resourcesProvider), 0.1f)));
            textView.setPadding(0, AndroidUtilities.m104dp(12), 0, AndroidUtilities.m104dp(12));
            builder.addBottomView(textView);
            builder.setMessage(spannableStringBuilder);
            builder.setPositiveButton(LocaleController.getString("Close", C3634R.string.Close), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    BoostDialogs.lambda$showAboutEnd$15(dialogInterface, i5);
                }
            });
        } else if (tLRPC$TL_payments_giveawayInfoResults.winner) {
            spannableStringBuilder.append((CharSequence) LocaleController.getString("BoostingGiveawayYouWon", C3634R.string.BoostingGiveawayYouWon));
            builder.setMessage(spannableStringBuilder);
            builder.setPositiveButton(LocaleController.getString("BoostingGiveawayViewPrize", C3634R.string.BoostingGiveawayViewPrize), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda9
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    BoostDialogs.lambda$showAboutEnd$16(dialogInterface, i5);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Close", C3634R.string.Close), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    BoostDialogs.lambda$showAboutEnd$17(dialogInterface, i5);
                }
            });
        } else {
            spannableStringBuilder.append((CharSequence) LocaleController.getString("BoostingGiveawayYouNotWon", C3634R.string.BoostingGiveawayYouNotWon));
            builder.setMessage(spannableStringBuilder);
            builder.setPositiveButton(LocaleController.getString("Close", C3634R.string.Close), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    BoostDialogs.lambda$showAboutEnd$18(dialogInterface, i5);
                }
            });
        }
        builder.show();
    }

    public static void showPrivateChannelAlert(Context context, Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("BoostingGiveawayPrivateChannel", C3634R.string.BoostingGiveawayPrivateChannel));
        builder.setMessage(LocaleController.getString("BoostingGiveawayPrivateChannelWarning", C3634R.string.BoostingGiveawayPrivateChannelWarning));
        builder.setPositiveButton(LocaleController.getString("Add", C3634R.string.Add), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                atomicBoolean.set(true);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3634R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                BoostDialogs.lambda$showPrivateChannelAlert$20(dialogInterface, i);
            }
        });
        builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                BoostDialogs.lambda$showPrivateChannelAlert$21(atomicBoolean, runnable, dialogInterface);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showPrivateChannelAlert$21(AtomicBoolean atomicBoolean, Runnable runnable, DialogInterface dialogInterface) {
        if (atomicBoolean.get()) {
            return;
        }
        runnable.run();
    }

    public static void openGiveAwayStatusDialog(MessageObject messageObject, final Browser.Progress progress, final Context context, final Theme.ResourcesProvider resourcesProvider) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        progress.init();
        progress.onCancel(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                atomicBoolean.set(true);
            }
        });
        final TLRPC$TL_messageMediaGiveaway tLRPC$TL_messageMediaGiveaway = (TLRPC$TL_messageMediaGiveaway) messageObject.messageOwner.media;
        final long fromChatId = messageObject.getFromChatId();
        final long j = 1000 * messageObject.messageOwner.date;
        BoostRepository.getGiveawayInfo(messageObject, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BoostDialogs.lambda$openGiveAwayStatusDialog$23(atomicBoolean, progress, fromChatId, j, tLRPC$TL_messageMediaGiveaway, context, resourcesProvider, (TLRPC$payments_GiveawayInfo) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda21
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BoostDialogs.lambda$openGiveAwayStatusDialog$24(atomicBoolean, progress, (TLRPC$TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openGiveAwayStatusDialog$23(AtomicBoolean atomicBoolean, Browser.Progress progress, long j, long j2, TLRPC$TL_messageMediaGiveaway tLRPC$TL_messageMediaGiveaway, Context context, Theme.ResourcesProvider resourcesProvider, TLRPC$payments_GiveawayInfo tLRPC$payments_GiveawayInfo) {
        if (atomicBoolean.get()) {
            return;
        }
        progress.end();
        if (tLRPC$payments_GiveawayInfo instanceof TLRPC$TL_payments_giveawayInfo) {
            showAbout(j, j2, (TLRPC$TL_payments_giveawayInfo) tLRPC$payments_GiveawayInfo, tLRPC$TL_messageMediaGiveaway, context, resourcesProvider);
        } else if (tLRPC$payments_GiveawayInfo instanceof TLRPC$TL_payments_giveawayInfoResults) {
            showAboutEnd(j, j2, (TLRPC$TL_payments_giveawayInfoResults) tLRPC$payments_GiveawayInfo, tLRPC$TL_messageMediaGiveaway, context, resourcesProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openGiveAwayStatusDialog$24(AtomicBoolean atomicBoolean, Browser.Progress progress, TLRPC$TL_error tLRPC$TL_error) {
        if (atomicBoolean.get()) {
            return;
        }
        progress.end();
    }

    public static void showBulletinAbout(final MessageObject messageObject) {
        if (messageObject == null) {
            return;
        }
        BoostRepository.getGiveawayInfo(messageObject, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BoostDialogs.lambda$showBulletinAbout$26(MessageObject.this, (TLRPC$payments_GiveawayInfo) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda24
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BoostDialogs.lambda$showBulletinAbout$27((TLRPC$TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBulletinAbout$26(MessageObject messageObject, final TLRPC$payments_GiveawayInfo tLRPC$payments_GiveawayInfo) {
        final TLRPC$TL_messageMediaGiveaway tLRPC$TL_messageMediaGiveaway = (TLRPC$TL_messageMediaGiveaway) messageObject.messageOwner.media;
        final long fromChatId = messageObject.getFromChatId();
        final long j = 1000 * messageObject.messageOwner.date;
        final BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(lastFragment.getParentActivity(), lastFragment.getResourceProvider());
        if (tLRPC$payments_GiveawayInfo instanceof TLRPC$TL_payments_giveawayInfoResults) {
            lottieLayout.setAnimation(C3634R.raw.chats_infotip, 30, 30, new String[0]);
            lottieLayout.textView.setText(LocaleController.getString("BoostingGiveawayShortStatusEnded", C3634R.string.BoostingGiveawayShortStatusEnded));
        } else if (tLRPC$payments_GiveawayInfo instanceof TLRPC$TL_payments_giveawayInfo) {
            if (((TLRPC$TL_payments_giveawayInfo) tLRPC$payments_GiveawayInfo).participating) {
                lottieLayout.setAnimation(C3634R.raw.forward, 30, 30, new String[0]);
                lottieLayout.textView.setText(LocaleController.getString("BoostingGiveawayShortStatusParticipating", C3634R.string.BoostingGiveawayShortStatusParticipating));
            } else {
                lottieLayout.setAnimation(C3634R.raw.chats_infotip, 30, 30, new String[0]);
                lottieLayout.textView.setText(LocaleController.getString("BoostingGiveawayShortStatusNotParticipating", C3634R.string.BoostingGiveawayShortStatusNotParticipating));
            }
        }
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(2);
        lottieLayout.setButton(new Bulletin.UndoButton(lastFragment.getParentActivity(), true, lastFragment.getResourceProvider()).setText(LocaleController.getString("LearnMore", C3634R.string.LearnMore)).setUndoAction(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                BoostDialogs.lambda$showBulletinAbout$25(TLRPC$payments_GiveawayInfo.this, fromChatId, j, tLRPC$TL_messageMediaGiveaway, lastFragment);
            }
        }));
        Bulletin.make(lastFragment, lottieLayout, 2750).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBulletinAbout$25(TLRPC$payments_GiveawayInfo tLRPC$payments_GiveawayInfo, long j, long j2, TLRPC$TL_messageMediaGiveaway tLRPC$TL_messageMediaGiveaway, BaseFragment baseFragment) {
        if (tLRPC$payments_GiveawayInfo instanceof TLRPC$TL_payments_giveawayInfo) {
            showAbout(j, j2, (TLRPC$TL_payments_giveawayInfo) tLRPC$payments_GiveawayInfo, tLRPC$TL_messageMediaGiveaway, baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        } else if (tLRPC$payments_GiveawayInfo instanceof TLRPC$TL_payments_giveawayInfoResults) {
            showAboutEnd(j, j2, (TLRPC$TL_payments_giveawayInfoResults) tLRPC$payments_GiveawayInfo, tLRPC$TL_messageMediaGiveaway, baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        }
    }

    public static void showMoreBoostsNeeded(long j) {
        TLRPC$Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-j));
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(lastFragment.getContext(), lastFragment.getResourceProvider());
        builder.setTitle(LocaleController.getString("BoostingMoreBoostsNeeded", C3634R.string.BoostingMoreBoostsNeeded));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGetMoreBoostByGifting", C3634R.string.BoostingGetMoreBoostByGifting, chat.title)));
        builder.setPositiveButton(LocaleController.getString("OK", C3634R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                BoostDialogs.lambda$showMoreBoostsNeeded$28(dialogInterface, i);
            }
        });
        builder.show();
    }
}
