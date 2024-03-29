package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Date;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_payments_checkedGiftCode;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.TableCell */
/* loaded from: classes6.dex */
public class TableCell extends FrameLayout {
    private final TextView dateNameTextView;
    private final TextView dateTextView;
    private FrameLayout fromFrameLayout;
    private final BackupImageView fromImageView;
    private final TextView fromNameTextView;
    private final TextView fromTextView;
    private final TextView giftNameTextView;
    private final TextView giftTextView;
    private final Paint linePaint;
    private final TextView reasonNameTextView;
    private final TextView reasonTextView;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Path roundPath;
    private final RectF roundRect;
    private TableRow tableRow4;
    private FrameLayout toFrameLayout;
    private final BackupImageView toImageView;
    private final TextView toNameTextView;
    private final TextView toTextView;

    public TableCell(Context context, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        boolean z;
        Paint paint = new Paint();
        this.linePaint = paint;
        this.roundPath = new Path();
        this.roundRect = new RectF();
        paint.setStyle(Paint.Style.STROKE);
        this.resourcesProvider = resourcesProvider;
        TextView createTextView = createTextView(LocaleController.getString("BoostingFrom", C3632R.string.BoostingFrom), false);
        this.fromNameTextView = createTextView;
        TextView createTextView2 = createTextView(LocaleController.getString("BoostingTo", C3632R.string.BoostingTo), false);
        this.toNameTextView = createTextView2;
        TextView createTextView3 = createTextView(LocaleController.getString("BoostingGift", C3632R.string.BoostingGift), false);
        this.giftNameTextView = createTextView3;
        TextView createTextView4 = createTextView(LocaleController.getString("BoostingReason", C3632R.string.BoostingReason), false);
        this.reasonNameTextView = createTextView4;
        TextView createTextView5 = createTextView(LocaleController.getString("BoostingDate", C3632R.string.BoostingDate), false);
        this.dateNameTextView = createTextView5;
        TextView createTextView6 = createTextView(true);
        this.fromTextView = createTextView6;
        TextView createTextView7 = createTextView(true);
        this.toTextView = createTextView7;
        TextView createTextView8 = createTextView(false);
        this.giftTextView = createTextView8;
        TextView createTextView9 = createTextView(true);
        this.reasonTextView = createTextView9;
        TextView createTextView10 = createTextView(false);
        this.dateTextView = createTextView10;
        BackupImageView backupImageView = new BackupImageView(context);
        this.fromImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m107dp(12));
        BackupImageView backupImageView2 = new BackupImageView(context);
        this.toImageView = backupImageView2;
        backupImageView2.setRoundRadius(AndroidUtilities.m107dp(12));
        TableRow tableRow = new TableRow(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fromFrameLayout = frameLayout;
        boolean z2 = LocaleController.isRTL;
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(24, 24, z2 ? 5 : 3, z2 ? 0 : 12, 0, z2 ? 12 : 0, 0));
        FrameLayout frameLayout2 = this.fromFrameLayout;
        boolean z3 = LocaleController.isRTL;
        frameLayout2.addView(createTextView6, LayoutHelper.createFrame(-2, -2, (z3 ? 5 : 3) | 16, z3 ? 0 : 29, 0, z3 ? 29 : 0, 0));
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(-2, -2, LocaleController.isRTL ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        layoutParams.gravity = 16;
        if (LocaleController.isRTL) {
            tableRow.addView(this.fromFrameLayout, layoutParams);
            tableRow.addView(createTextView, new TableRow.LayoutParams(-2, -2));
        } else {
            tableRow.addView(createTextView, new TableRow.LayoutParams(-2, -2));
            tableRow.addView(this.fromFrameLayout, layoutParams);
        }
        this.fromFrameLayout.setPadding(0, AndroidUtilities.m107dp(6), 0, AndroidUtilities.m107dp(6));
        TableRow tableRow2 = new TableRow(context);
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.toFrameLayout = frameLayout3;
        boolean z4 = LocaleController.isRTL;
        frameLayout3.addView(backupImageView2, LayoutHelper.createFrame(24, 24, z4 ? 5 : 3, z4 ? 0 : 12, 0, z4 ? 12 : 0, 0));
        FrameLayout frameLayout4 = this.toFrameLayout;
        boolean z5 = LocaleController.isRTL;
        frameLayout4.addView(createTextView7, LayoutHelper.createFrame(-2, -2, (z5 ? 5 : 3) | 16, z5 ? 0 : 29, 0, z5 ? 29 : 0, 0));
        TableRow.LayoutParams layoutParams2 = new TableRow.LayoutParams(-2, -2, LocaleController.isRTL ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        layoutParams2.gravity = 16;
        if (LocaleController.isRTL) {
            tableRow2.addView(this.toFrameLayout, layoutParams2);
            tableRow2.addView(createTextView2, new TableRow.LayoutParams(-2, -2));
        } else {
            tableRow2.addView(createTextView2, new TableRow.LayoutParams(-2, -2));
            tableRow2.addView(this.toFrameLayout, layoutParams2);
        }
        this.toFrameLayout.setPadding(0, AndroidUtilities.m107dp(6), 0, AndroidUtilities.m107dp(6));
        TableRow tableRow3 = new TableRow(context);
        if (LocaleController.isRTL) {
            tableRow3.addView(createTextView8, new TableRow.LayoutParams(-2, -2, 1.0f));
            tableRow3.addView(createTextView3, new TableRow.LayoutParams(-2, -2));
        } else {
            tableRow3.addView(createTextView3, new TableRow.LayoutParams(-2, -2));
            tableRow3.addView(createTextView8, new TableRow.LayoutParams(-2, -2));
        }
        TableRow tableRow4 = new TableRow(context);
        this.tableRow4 = tableRow4;
        if (LocaleController.isRTL) {
            tableRow4.addView(createTextView9, new TableRow.LayoutParams(-2, -2, 1.0f));
            this.tableRow4.addView(createTextView4, new TableRow.LayoutParams(-2, -2));
        } else {
            tableRow4.addView(createTextView4, new TableRow.LayoutParams(-2, -2));
            this.tableRow4.addView(createTextView9, new TableRow.LayoutParams(-2, -2));
        }
        TableRow tableRow5 = new TableRow(context);
        if (LocaleController.isRTL) {
            tableRow5.addView(createTextView10, new TableRow.LayoutParams(-2, -2, 1.0f));
            tableRow5.addView(createTextView5, new TableRow.LayoutParams(-2, -2));
        } else {
            tableRow5.addView(createTextView5, new TableRow.LayoutParams(-2, -2));
            tableRow5.addView(createTextView10, new TableRow.LayoutParams(-2, -2));
        }
        TableLayout tableLayout = new TableLayout(context) { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell.1
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                TableCell.this.roundRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                TableCell.this.roundPath.rewind();
                TableCell.this.roundPath.addRoundRect(TableCell.this.roundRect, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), Path.Direction.CW);
                if (Build.VERSION.SDK_INT < 21) {
                    canvas.clipPath(TableCell.this.roundPath);
                }
                super.dispatchDraw(canvas);
                TableCell.this.linePaint.setColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_divider, resourcesProvider), -1, 0.1f));
                TableCell.this.linePaint.setStrokeWidth(AndroidUtilities.m107dp(1));
                float height = getHeight() / (TableCell.this.tableRow4.getVisibility() == 0 ? 5.0f : 4.0f);
                for (int i = 1; i <= 4; i++) {
                    float f = height * i;
                    canvas.drawLine(BitmapDescriptorFactory.HUE_RED, f, getWidth(), f, TableCell.this.linePaint);
                }
                float right = LocaleController.isRTL ? TableCell.this.dateTextView.getRight() : TableCell.this.dateTextView.getLeft();
                canvas.drawLine(right, BitmapDescriptorFactory.HUE_RED, right, getHeight(), TableCell.this.linePaint);
                TableCell.this.linePaint.setStrokeWidth(AndroidUtilities.m107dp(2));
                canvas.drawPath(TableCell.this.roundPath, TableCell.this.linePaint);
            }
        };
        tableLayout.addView(tableRow);
        tableLayout.addView(tableRow2);
        tableLayout.addView(tableRow3);
        tableLayout.addView(this.tableRow4);
        tableLayout.addView(tableRow5);
        if (LocaleController.isRTL) {
            z = true;
            tableLayout.setColumnShrinkable(0, true);
        } else {
            z = true;
            tableLayout.setColumnShrinkable(1, true);
        }
        addView(tableLayout, LayoutHelper.createFrame(-1, -2));
        if (Build.VERSION.SDK_INT >= 21) {
            tableLayout.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell.2
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.m107dp(6));
                }
            });
            tableLayout.setClipToOutline(z);
        }
        setPaddingRelative(AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(18), AndroidUtilities.m107dp(14), 0);
    }

    public void setData(final TLRPC$TL_payments_checkedGiftCode tLRPC$TL_payments_checkedGiftCode, final Utilities.Callback<TLObject> callback) {
        Date date = new Date(tLRPC$TL_payments_checkedGiftCode.date * 1000);
        this.dateTextView.setText(LocaleController.formatString("formatDateAtTime", C3632R.string.formatDateAtTime, LocaleController.getInstance().formatterYear.format(date), LocaleController.getInstance().formatterDay.format(date)));
        this.reasonTextView.setTextColor(Theme.getColor(tLRPC$TL_payments_checkedGiftCode.via_giveaway ? Theme.key_dialogTextBlue : Theme.key_dialogTextBlack, this.resourcesProvider));
        if (tLRPC$TL_payments_checkedGiftCode.via_giveaway) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) "**");
            spannableStringBuilder.append((CharSequence) LocaleController.getString("BoostingGiveaway", C3632R.string.BoostingGiveaway));
            spannableStringBuilder.append((CharSequence) "**");
            this.reasonTextView.setText(AndroidUtilities.replaceSingleTag(spannableStringBuilder.toString(), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(tLRPC$TL_payments_checkedGiftCode);
                }
            }, this.resourcesProvider));
            this.reasonTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Utilities.Callback.this.run(tLRPC$TL_payments_checkedGiftCode);
                }
            });
        } else {
            this.reasonTextView.setText(LocaleController.getString("BoostingYouWereSelected", C3632R.string.BoostingYouWereSelected));
            this.reasonTextView.setOnClickListener(null);
        }
        int i = tLRPC$TL_payments_checkedGiftCode.months;
        this.giftTextView.setText(LocaleController.formatString("BoostingTelegramPremiumFor", C3632R.string.BoostingTelegramPremiumFor, i == 12 ? LocaleController.formatPluralString("Years", 1, new Object[0]) : LocaleController.formatPluralString("Months", i, new Object[0])));
        final TLRPC$Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tLRPC$TL_payments_checkedGiftCode.from_id)));
        if (chat != null) {
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) "**");
            spannableStringBuilder2.append((CharSequence) chat.title);
            spannableStringBuilder2.append((CharSequence) "**");
            SpannableStringBuilder replaceSingleTag = AndroidUtilities.replaceSingleTag(spannableStringBuilder2.toString(), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(chat);
                }
            }, this.resourcesProvider);
            TextView textView = this.fromTextView;
            textView.setText(Emoji.replaceEmoji((CharSequence) replaceSingleTag, textView.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(12), false));
            this.fromImageView.setForUserOrChat(chat, new AvatarDrawable(chat));
            this.fromFrameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Utilities.Callback.this.run(chat);
                }
            });
        } else {
            final TLRPC$User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(tLRPC$TL_payments_checkedGiftCode.from_id.user_id));
            this.fromTextView.setText(Emoji.replaceEmoji((CharSequence) UserObject.getFirstName(user), this.fromTextView.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(12), false));
            this.fromImageView.setForUserOrChat(user, new AvatarDrawable(user));
            this.fromFrameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Utilities.Callback.this.run(user);
                }
            });
        }
        if (tLRPC$TL_payments_checkedGiftCode.to_id == -1 && tLRPC$TL_payments_checkedGiftCode.via_giveaway) {
            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
            spannableStringBuilder3.append((CharSequence) "**");
            spannableStringBuilder3.append((CharSequence) LocaleController.getString("BoostingIncompleteGiveaway", C3632R.string.BoostingIncompleteGiveaway));
            spannableStringBuilder3.append((CharSequence) "**");
            this.reasonTextView.setText(AndroidUtilities.replaceSingleTag(spannableStringBuilder3.toString(), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(tLRPC$TL_payments_checkedGiftCode);
                }
            }, this.resourcesProvider));
            this.toTextView.setText(LocaleController.getString("BoostingNoRecipient", C3632R.string.BoostingNoRecipient));
            this.toTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
            ((ViewGroup.MarginLayoutParams) this.toTextView.getLayoutParams()).leftMargin = 0;
            ((ViewGroup.MarginLayoutParams) this.toTextView.getLayoutParams()).rightMargin = 0;
            this.toImageView.setVisibility(8);
        } else {
            final TLRPC$User user2 = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(tLRPC$TL_payments_checkedGiftCode.to_id));
            if (user2 != null) {
                SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                spannableStringBuilder4.append((CharSequence) "**");
                spannableStringBuilder4.append((CharSequence) UserObject.getFirstName(user2));
                spannableStringBuilder4.append((CharSequence) "**");
                SpannableStringBuilder replaceSingleTag2 = AndroidUtilities.replaceSingleTag(spannableStringBuilder4.toString(), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        Utilities.Callback.this.run(user2);
                    }
                }, this.resourcesProvider);
                TextView textView2 = this.toTextView;
                textView2.setText(Emoji.replaceEmoji((CharSequence) replaceSingleTag2, textView2.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(12), false));
                this.toImageView.setForUserOrChat(user2, new AvatarDrawable(user2));
                this.toFrameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.TableCell$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Utilities.Callback.this.run(user2);
                    }
                });
            }
        }
        if (tLRPC$TL_payments_checkedGiftCode.boost != null) {
            this.tableRow4.setVisibility(8);
        }
    }

    private TextView createTextView(boolean z) {
        return createTextView(null, z);
    }

    private TextView createTextView(String str, boolean z) {
        TextView textView;
        if (z) {
            textView = new LinkSpanDrawable.LinksTextView(getContext(), this.resourcesProvider);
            textView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, this.resourcesProvider));
        } else {
            textView = new TextView(getContext());
        }
        textView.setTextColor(Theme.getColor(z ? Theme.key_dialogTextBlue : Theme.key_dialogTextBlack, this.resourcesProvider));
        textView.setTextSize(1, 14.0f);
        if (!z) {
            textView.setGravity(LocaleController.isRTL ? 5 : 3);
        }
        if (str != null) {
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView.setText(str);
            textView.setBackgroundColor(Theme.getColor(Theme.key_graySection, this.resourcesProvider));
            textView.setPadding(AndroidUtilities.m107dp(LocaleController.isRTL ? 32 : 12), AndroidUtilities.m107dp(11), AndroidUtilities.m107dp(LocaleController.isRTL ? 12 : 32), AndroidUtilities.m107dp(11));
        } else {
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setPadding(AndroidUtilities.m107dp(14), 0, AndroidUtilities.m107dp(14), 0);
        }
        return textView;
    }
}
