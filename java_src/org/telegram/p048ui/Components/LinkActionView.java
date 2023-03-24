package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Property;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.DialogCell;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_chatInviteExported;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputUserEmpty;
import org.telegram.tgnet.TLRPC$TL_messages_chatInviteImporters;
import org.telegram.tgnet.TLRPC$TL_messages_getChatInviteImporters;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.LinkActionView */
/* loaded from: classes6.dex */
public class LinkActionView extends LinearLayout {
    private ActionBarPopupWindow actionBarPopupWindow;
    private AvatarDrawable avatarDrawable;
    private BackupImageView avatarImageView;
    private final AvatarsContainer avatarsContainer;
    private boolean canEdit;
    private final TextView copyView;
    private Delegate delegate;
    private EditTextBoldCursor editText;
    BaseFragment fragment;
    private final FrameLayout frameLayout;
    private boolean hideRevokeOption;
    private boolean isChannel;
    private boolean isEditableAsInput;
    private boolean isWithAvatar;
    private LinearLayout linearLayout;
    String link;
    TextView linkView;
    boolean loadingImporters;
    private TextView maxView;
    private AppCompatImageView networkImageView;
    private ArrayList<ActionBarMenuSubItem> optionsItems;
    ImageView optionsView;
    private boolean permanent;
    float[] point;
    private QRCodeBottomSheet qrCodeBottomSheet;
    private final TextView removeView;
    private final TextView shareView;
    private int usersCount;

    /* renamed from: org.telegram.ui.Components.LinkActionView$Delegate */
    /* loaded from: classes6.dex */
    public interface Delegate {

        /* renamed from: org.telegram.ui.Components.LinkActionView$Delegate$-CC */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void $default$editLink(Delegate delegate) {
            }

            public static void $default$removeLink(Delegate delegate) {
            }

            public static void $default$showUsersForPermanentLink(Delegate delegate) {
            }
        }

        void editLink();

        void removeLink();

        void revokeLink();

        void showUsersForPermanentLink();
    }

    public LinkActionView(Context context, BaseFragment baseFragment, BottomSheet bottomSheet, long j, boolean z, boolean z2) {
        this(context, baseFragment, bottomSheet, j, z, z2, false, false, true);
    }

    public void setEnabledActionButton(boolean z, ArrayList<Animator> arrayList) {
        if (arrayList != null) {
            this.copyView.setEnabled(z);
            TextView textView = this.copyView;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.5f;
            arrayList.add(ObjectAnimator.ofFloat(textView, property, fArr));
            return;
        }
        this.copyView.setEnabled(z);
        this.copyView.setAlpha(z ? 1.0f : 0.5f);
    }

    public void setMode(boolean z) {
        if (z) {
            EditTextBoldCursor editTextBoldCursor = this.editText;
            if (editTextBoldCursor != null) {
                editTextBoldCursor.setVisibility(0);
            }
            this.linkView.setVisibility(8);
            BackupImageView backupImageView = this.avatarImageView;
            if (backupImageView != null) {
                backupImageView.setVisibility(8);
            }
            updateInputPadding(Boolean.FALSE);
            return;
        }
        EditTextBoldCursor editTextBoldCursor2 = this.editText;
        if (editTextBoldCursor2 != null) {
            editTextBoldCursor2.setVisibility(8);
        }
        BackupImageView backupImageView2 = this.avatarImageView;
        if (backupImageView2 != null) {
            backupImageView2.setVisibility(0);
        }
        this.linkView.setVisibility(0);
    }

    public EditTextBoldCursor getEditText() {
        return this.editText;
    }

    public void setActionButtonText(String str) {
        this.copyView.setText(str);
    }

    public BackupImageView getAvatarImageView() {
        return this.avatarImageView;
    }

    public void setAvatar(TLRPC$Chat tLRPC$Chat) {
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        avatarDrawable.setInfo(tLRPC$Chat);
        this.avatarImageView.setForUserOrChat(tLRPC$Chat, this.avatarDrawable);
        updateInputPadding(Boolean.valueOf(this.avatarImageView.getImageReceiver().hasImageSet()));
    }

    public void setAvatar(TLRPC$User tLRPC$User) {
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        avatarDrawable.setInfo(tLRPC$User);
        this.avatarImageView.setForUserOrChat(tLRPC$User, this.avatarDrawable);
        updateInputPadding(Boolean.valueOf(this.avatarImageView.getImageReceiver().hasImageSet()));
    }

    public void setAvatar(Bitmap bitmap) {
        this.avatarImageView.setImageBitmap(bitmap);
        updateInputPadding(Boolean.valueOf(this.avatarImageView.getImageReceiver().hasImageSet()));
    }

    public void setAvatar(int i) {
        this.avatarImageView.setImageResource(i);
        updateInputPadding(Boolean.valueOf(this.avatarImageView.getImageReceiver().hasImageSet()));
    }

    public void setNetworkImage(int i) {
        if (this.avatarImageView == null) {
            return;
        }
        int m50dp = AndroidUtilities.m50dp(1);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor("windowBackgroundWhite")));
        materialShapeDrawable.setCornerSize(AndroidUtilities.m50dp(20) / 2.0f);
        AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
        this.networkImageView = appCompatImageView;
        this.frameLayout.addView(appCompatImageView, LayoutHelper.createFrame(20, 20, 19, 36, 0, 0, 14));
        this.networkImageView.setBackground(materialShapeDrawable);
        this.networkImageView.setImageResource(i);
        this.networkImageView.setPadding(m50dp, m50dp, m50dp, m50dp);
        this.networkImageView.setTop(this.avatarImageView.getTop() + 4);
        this.networkImageView.setRight(this.avatarImageView.getRight() + 4);
    }

    public void resetField() {
        setText("");
        AppCompatImageView appCompatImageView = this.networkImageView;
        if (appCompatImageView != null) {
            appCompatImageView.setVisibility(8);
        }
        BackupImageView backupImageView = this.avatarImageView;
        if (backupImageView == null) {
            return;
        }
        if (this.isWithAvatar) {
            backupImageView.setImageBitmap(null);
        }
        updateInputPadding(Boolean.valueOf(this.avatarImageView.getImageReceiver().hasImageSet()));
    }

    public void setText(String str) {
        EditTextBoldCursor editTextBoldCursor = this.editText;
        if (editTextBoldCursor != null) {
            editTextBoldCursor.setText(str);
        }
        this.linkView.setText(str);
    }

    public void setEditHint(String str) {
        EditTextBoldCursor editTextBoldCursor = this.editText;
        if (editTextBoldCursor != null) {
            editTextBoldCursor.setHint(str);
        }
        this.linkView.setHint(str);
    }

    public void setActionButtonListener(View.OnClickListener onClickListener) {
        this.copyView.setOnClickListener(onClickListener);
    }

    public void setFieldClickListener(View.OnClickListener onClickListener) {
        this.frameLayout.setOnClickListener(onClickListener);
    }

    public void setOptionsItems(ArrayList<ActionBarMenuSubItem> arrayList) {
        this.optionsItems = arrayList;
    }

    public ArrayList<ActionBarMenuSubItem> getOptionsItems() {
        return this.optionsItems;
    }

    public void dismissPopupWindow() {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
    }

    public FrameLayout getFieldContainer() {
        return this.frameLayout;
    }

    public LinearLayout getActionsLayout() {
        return this.linearLayout;
    }

    public void setOptionsViewIcon(int i) {
        this.optionsView.setImageDrawable(ContextCompat.getDrawable(getContext(), i));
    }

    public void hideAllActionButtons(boolean z) {
        this.shareView.setVisibility(8);
        this.removeView.setVisibility(8);
        if (z) {
            this.copyView.setVisibility(8);
        } else {
            this.copyView.setVisibility(0);
        }
    }

    public void addMaxButton(final Callbacks$Callback callbacks$Callback) {
        if (this.maxView != null) {
            return;
        }
        TextView textView = new TextView(getContext());
        this.maxView = textView;
        textView.setText(LocaleController.getInternalString(C3301R.string.common_max));
        this.maxView.setTextSize(1, 14.0f);
        this.maxView.setSingleLine(true);
        this.maxView.setGravity(17);
        this.maxView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callbacks$Callback.this.invoke();
            }
        });
        this.frameLayout.addView(this.maxView, LayoutHelper.createFrame(60, -1, 8388629, 0, 12, 12, 12));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.editText.getLayoutParams();
        layoutParams.setMarginEnd(AndroidUtilities.m50dp(60));
        this.editText.setLayoutParams(layoutParams);
        updateColors();
    }

    private void updateInputPadding(Boolean bool) {
        if (bool.booleanValue()) {
            this.linkView.setPadding(AndroidUtilities.m50dp(64), this.linkView.getPaddingTop(), this.linkView.getPaddingRight(), this.linkView.getPaddingBottom());
            EditTextBoldCursor editTextBoldCursor = this.editText;
            if (editTextBoldCursor != null) {
                editTextBoldCursor.setPadding(AndroidUtilities.m50dp(64), this.linkView.getPaddingTop(), this.linkView.getPaddingRight(), this.linkView.getPaddingBottom());
                return;
            }
            return;
        }
        this.linkView.setPadding(AndroidUtilities.m50dp(20), this.linkView.getPaddingTop(), this.linkView.getPaddingRight(), this.linkView.getPaddingBottom());
        EditTextBoldCursor editTextBoldCursor2 = this.editText;
        if (editTextBoldCursor2 != null) {
            editTextBoldCursor2.setPadding(AndroidUtilities.m50dp(20), this.linkView.getPaddingTop(), this.linkView.getPaddingRight(), this.linkView.getPaddingBottom());
        }
    }

    public LinkActionView(final Context context, final BaseFragment baseFragment, final BottomSheet bottomSheet, long j, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        super(context);
        this.optionsItems = new ArrayList<>();
        this.canEdit = true;
        this.point = new float[2];
        this.isEditableAsInput = z3;
        this.isWithAvatar = z4;
        this.fragment = baseFragment;
        this.permanent = z;
        this.isChannel = z2;
        setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        this.frameLayout = frameLayout;
        if (z3) {
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
            this.editText = editTextBoldCursor;
            editTextBoldCursor.setBackgroundDrawable(null);
            this.editText.setMaxLines(1);
            this.editText.setLines(1);
            this.editText.setSingleLine(true);
            this.editText.setPadding(AndroidUtilities.m50dp(20), AndroidUtilities.m50dp(18), AndroidUtilities.m50dp(40), AndroidUtilities.m50dp(18));
            this.editText.setTextSize(1, 16.0f);
            this.editText.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            this.editText.setVisibility(8);
            frameLayout.addView(this.editText);
        }
        TextView textView = new TextView(context);
        this.linkView = textView;
        textView.setPadding(AndroidUtilities.m50dp(20), AndroidUtilities.m50dp(18), AndroidUtilities.m50dp(40), AndroidUtilities.m50dp(18));
        this.linkView.setTextSize(1, 16.0f);
        this.linkView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        this.linkView.setSingleLine(true);
        frameLayout.addView(this.linkView);
        ImageView imageView = new ImageView(context);
        this.optionsView = imageView;
        imageView.setImageDrawable(ContextCompat.getDrawable(context, C3301R.C3303drawable.ic_ab_other));
        this.optionsView.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3301R.string.AccDescrMoreOptions));
        this.optionsView.setScaleType(ImageView.ScaleType.CENTER);
        frameLayout.addView(this.optionsView, LayoutHelper.createFrame(40, 48, 21));
        if (z4) {
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarImageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m50dp(24));
            frameLayout.addView(this.avatarImageView, LayoutHelper.createFrame(40, 40, 19, 12, 0, 0, 0));
        }
        addView(frameLayout, LayoutHelper.createLinear(-1, -2, 0, 4, 0, 4, 0));
        LinearLayout linearLayout = new LinearLayout(context);
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(0);
        TextView textView2 = new TextView(context);
        this.copyView = textView2;
        textView2.setGravity(1);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "..").setSpan(new ColoredImageSpan(ContextCompat.getDrawable(context, C3301R.C3303drawable.msg_copy_filled)), 0, 1, 0);
        spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m50dp(8)), 1, 2, 0);
        int i = C3301R.string.LinkActionCopy;
        spannableStringBuilder.append((CharSequence) LocaleController.getString("LinkActionCopy", i));
        spannableStringBuilder.append((CharSequence) ".").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m50dp(5)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
        textView2.setText(spannableStringBuilder);
        textView2.setContentDescription(LocaleController.getString("LinkActionCopy", i));
        textView2.setPadding(AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10));
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setSingleLine(true);
        linearLayout.addView(textView2, LayoutHelper.createLinear(0, 40, 1.0f, 0, 4, 0, 4, 0));
        TextView textView3 = new TextView(context);
        this.shareView = textView3;
        textView3.setGravity(1);
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        spannableStringBuilder2.append((CharSequence) "..").setSpan(new ColoredImageSpan(ContextCompat.getDrawable(context, C3301R.C3303drawable.msg_share_filled)), 0, 1, 0);
        spannableStringBuilder2.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m50dp(8)), 1, 2, 0);
        int i2 = C3301R.string.LinkActionShare;
        spannableStringBuilder2.append((CharSequence) LocaleController.getString("LinkActionShare", i2));
        spannableStringBuilder2.append((CharSequence) ".").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m50dp(5)), spannableStringBuilder2.length() - 1, spannableStringBuilder2.length(), 0);
        textView3.setText(spannableStringBuilder2);
        textView3.setContentDescription(LocaleController.getString("LinkActionShare", i2));
        textView3.setPadding(AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10));
        textView3.setTextSize(1, 14.0f);
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView3.setSingleLine(true);
        linearLayout.addView(textView3, LayoutHelper.createLinear(0, 40, 1.0f, 4, 0, 4, 0));
        TextView textView4 = new TextView(context);
        this.removeView = textView4;
        textView4.setGravity(1);
        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
        spannableStringBuilder3.append((CharSequence) "..").setSpan(new ColoredImageSpan(ContextCompat.getDrawable(context, C3301R.C3303drawable.msg_delete_filled)), 0, 1, 0);
        spannableStringBuilder3.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m50dp(8)), 1, 2, 0);
        spannableStringBuilder3.append((CharSequence) LocaleController.getString("DeleteLink", C3301R.string.DeleteLink));
        spannableStringBuilder3.append((CharSequence) ".").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m50dp(5)), spannableStringBuilder3.length() - 1, spannableStringBuilder3.length(), 0);
        textView4.setText(spannableStringBuilder3);
        textView4.setPadding(AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10));
        textView4.setTextSize(1, 14.0f);
        textView4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView4.setSingleLine(true);
        linearLayout.addView(textView4, LayoutHelper.createLinear(0, -2, 1.0f, 4, 0, 4, 0));
        textView4.setVisibility(8);
        addView(linearLayout, LayoutHelper.createLinear(-1, -2, 0, 20, 0, 0));
        AvatarsContainer avatarsContainer = new AvatarsContainer(context);
        this.avatarsContainer = avatarsContainer;
        addView(avatarsContainer, LayoutHelper.createLinear(-1, 44, 0, 12, 0, 0));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkActionView.this.lambda$new$1(bottomSheet, baseFragment, view);
            }
        });
        if (z) {
            avatarsContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LinkActionView.this.lambda$new$2(view);
                }
            });
        }
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkActionView.this.lambda$new$3(baseFragment, view);
            }
        });
        textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkActionView.this.lambda$new$5(baseFragment, view);
            }
        });
        if (z5) {
            this.optionsView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LinkActionView.this.lambda$new$11(context, bottomSheet, baseFragment, view);
                }
            });
        }
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView.4
            {
                LinkActionView.this = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LinkActionView.this.copyView.callOnClick();
            }
        });
        updateColors();
    }

    public /* synthetic */ void lambda$new$1(BottomSheet bottomSheet, BaseFragment baseFragment, View view) {
        try {
            if (this.link == null) {
                return;
            }
            ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", this.link));
            if (bottomSheet != null && bottomSheet.getContainer() != null) {
                BulletinFactory.createCopyLinkBulletin(bottomSheet.getContainer()).show();
            } else {
                BulletinFactory.createCopyLinkBulletin(baseFragment).show();
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public /* synthetic */ void lambda$new$2(View view) {
        this.delegate.showUsersForPermanentLink();
    }

    public /* synthetic */ void lambda$new$3(BaseFragment baseFragment, View view) {
        try {
            if (this.link == null) {
                return;
            }
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", this.link);
            baseFragment.startActivityForResult(Intent.createChooser(intent, LocaleController.getString("InviteToGroupByLink", C3301R.string.InviteToGroupByLink)), 500);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public /* synthetic */ void lambda$new$5(BaseFragment baseFragment, View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString("DeleteLink", C3301R.string.DeleteLink));
        builder.setMessage(LocaleController.getString("DeleteLinkHelp", C3301R.string.DeleteLinkHelp));
        builder.setPositiveButton(LocaleController.getString("Delete", C3301R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                LinkActionView.this.lambda$new$4(dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        baseFragment.showDialog(builder.create());
    }

    public /* synthetic */ void lambda$new$4(DialogInterface dialogInterface, int i) {
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.removeLink();
        }
    }

    public /* synthetic */ void lambda$new$11(final Context context, BottomSheet bottomSheet, BaseFragment baseFragment, View view) {
        final FrameLayout container;
        if (this.actionBarPopupWindow != null) {
            return;
        }
        final ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(context);
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                LinkActionView.this.lambda$new$9(context, actionBarPopupWindowLayout);
            }
        };
        if (this.optionsItems.isEmpty()) {
            runnable.run();
        } else {
            for (int i = 0; i < this.optionsItems.size(); i++) {
                ActionBarMenuSubItem actionBarMenuSubItem = this.optionsItems.get(i);
                if (actionBarMenuSubItem.getParent() != null) {
                    ((ViewGroup) actionBarMenuSubItem.getParent()).removeView(actionBarMenuSubItem);
                }
                actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
            }
        }
        if (bottomSheet == null) {
            container = baseFragment.getParentLayout().getOverlayContainerView();
        } else {
            container = bottomSheet.getContainer();
        }
        if (container != null) {
            getPointOnScreen(this.frameLayout, container, this.point);
            float f = this.point[1];
            final View view2 = new View(context) { // from class: org.telegram.ui.Components.LinkActionView.1
                {
                    LinkActionView.this = this;
                }

                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    canvas.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                    LinkActionView linkActionView = LinkActionView.this;
                    linkActionView.getPointOnScreen(linkActionView.frameLayout, container, LinkActionView.this.point);
                    canvas.save();
                    float y = ((View) LinkActionView.this.frameLayout.getParent()).getY() + LinkActionView.this.frameLayout.getY();
                    if (y < 1.0f) {
                        canvas.clipRect(BitmapDescriptorFactory.HUE_RED, (LinkActionView.this.point[1] - y) + 1.0f, getMeasuredWidth(), getMeasuredHeight());
                    }
                    float[] fArr = LinkActionView.this.point;
                    canvas.translate(fArr[0], fArr[1]);
                    LinkActionView.this.frameLayout.draw(canvas);
                    canvas.restore();
                }
            };
            final ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener(this) { // from class: org.telegram.ui.Components.LinkActionView.2
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    view2.invalidate();
                    return true;
                }
            };
            container.getViewTreeObserver().addOnPreDrawListener(onPreDrawListener);
            container.addView(view2, LayoutHelper.createFrame(-1, -1));
            float f2 = BitmapDescriptorFactory.HUE_RED;
            view2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            view2.animate().alpha(1.0f).setDuration(150L);
            actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(container.getMeasuredWidth(), 0), View.MeasureSpec.makeMeasureSpec(container.getMeasuredHeight(), 0));
            ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
            this.actionBarPopupWindow = actionBarPopupWindow;
            actionBarPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.Components.LinkActionView.3
                {
                    LinkActionView.this = this;
                }

                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    LinkActionView.this.actionBarPopupWindow = null;
                    view2.animate().cancel();
                    view2.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.LinkActionView.3.1
                        {
                            C47343.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (view2.getParent() != null) {
                                C47343 c47343 = C47343.this;
                                container.removeView(view2);
                            }
                            container.getViewTreeObserver().removeOnPreDrawListener(onPreDrawListener);
                        }
                    });
                }
            });
            this.actionBarPopupWindow.setOutsideTouchable(true);
            this.actionBarPopupWindow.setFocusable(true);
            this.actionBarPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
            this.actionBarPopupWindow.setAnimationStyle(C3301R.style.PopupContextAnimation);
            this.actionBarPopupWindow.setInputMethodMode(2);
            this.actionBarPopupWindow.setSoftInputMode(0);
            actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda14
                @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                    LinkActionView.this.lambda$new$10(keyEvent);
                }
            });
            if (AndroidUtilities.isTablet()) {
                f += container.getPaddingTop();
                f2 = BitmapDescriptorFactory.HUE_RED - container.getPaddingLeft();
            }
            this.actionBarPopupWindow.showAtLocation(container, 0, (int) (((container.getMeasuredWidth() - actionBarPopupWindowLayout.getMeasuredWidth()) - AndroidUtilities.m50dp(16)) + container.getX() + f2), (int) (f + this.frameLayout.getMeasuredHeight() + container.getY()));
        }
    }

    public /* synthetic */ void lambda$new$9(Context context, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        if (!this.permanent && this.canEdit) {
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(context, true, false);
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Edit", C3301R.string.Edit), C3301R.C3303drawable.msg_edit);
            actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LinkActionView.this.lambda$new$6(view);
                }
            });
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(context, true, false);
        actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("GetQRCode", C3301R.string.GetQRCode), C3301R.C3303drawable.msg_qrcode);
        actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem2, LayoutHelper.createLinear(-1, 48));
        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkActionView.this.lambda$new$7(view);
            }
        });
        if (this.hideRevokeOption) {
            return;
        }
        ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(context, false, true);
        actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("RevokeLink", C3301R.string.RevokeLink), C3301R.C3303drawable.msg_delete);
        actionBarMenuSubItem3.setColors(Theme.getColor("windowBackgroundWhiteRedText"), Theme.getColor("windowBackgroundWhiteRedText"));
        actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkActionView.this.lambda$new$8(view);
            }
        });
        actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem3, LayoutHelper.createLinear(-1, 48));
    }

    public /* synthetic */ void lambda$new$6(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
        this.delegate.editLink();
    }

    public /* synthetic */ void lambda$new$7(View view) {
        showQrCode();
    }

    public /* synthetic */ void lambda$new$8(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
        revokeLink();
    }

    public /* synthetic */ void lambda$new$10(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && this.actionBarPopupWindow.isShowing()) {
            this.actionBarPopupWindow.dismiss(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v9, types: [android.view.View] */
    public void getPointOnScreen(FrameLayout frameLayout, FrameLayout frameLayout2, float[] fArr) {
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = 0.0f;
        FrameLayout frameLayout3 = frameLayout;
        while (frameLayout3 != frameLayout2) {
            f += frameLayout3.getY();
            f2 += frameLayout3.getX();
            if (frameLayout3 instanceof ScrollView) {
                f -= frameLayout3.getScrollY();
            }
            if (!(frameLayout3.getParent() instanceof View)) {
                break;
            }
            ?? r4 = (View) frameLayout3.getParent();
            boolean z = r4 instanceof ViewGroup;
            frameLayout3 = r4;
            if (!z) {
                return;
            }
        }
        fArr[0] = f2 - frameLayout2.getPaddingLeft();
        fArr[1] = f - frameLayout2.getPaddingTop();
    }

    private void showQrCode() {
        int i;
        String str;
        Context context = getContext();
        String string = LocaleController.getString("InviteByQRCode", C3301R.string.InviteByQRCode);
        String str2 = this.link;
        if (this.isChannel) {
            i = C3301R.string.QRCodeLinkHelpChannel;
            str = "QRCodeLinkHelpChannel";
        } else {
            i = C3301R.string.QRCodeLinkHelpGroup;
            str = "QRCodeLinkHelpGroup";
        }
        QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(context, string, str2, LocaleController.getString(str, i), false) { // from class: org.telegram.ui.Components.LinkActionView.5
            {
                LinkActionView.this = this;
            }

            @Override // org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
            public void dismiss() {
                super.dismiss();
                LinkActionView.this.qrCodeBottomSheet = null;
            }
        };
        this.qrCodeBottomSheet = qRCodeBottomSheet;
        qRCodeBottomSheet.setCenterAnimation(C3301R.C3306raw.qr_code_logo);
        this.qrCodeBottomSheet.show();
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
    }

    public void updateColors() {
        EditTextBoldCursor editTextBoldCursor;
        this.linkView.setHintTextColor(Theme.getColor("chats_message"));
        if (this.isEditableAsInput && (editTextBoldCursor = this.editText) != null) {
            editTextBoldCursor.setHintTextColor(Theme.getColor("chats_message"));
            this.editText.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        }
        TextView textView = this.maxView;
        if (textView != null) {
            textView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
            this.maxView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed")));
        }
        this.copyView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        this.shareView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        this.removeView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        this.copyView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed")));
        this.shareView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed")));
        this.removeView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), Theme.getColor("chat_attachAudioBackground"), ColorUtils.setAlphaComponent(Theme.getColor("windowBackgroundWhite"), 120)));
        this.frameLayout.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), Theme.getColor("graySection"), ColorUtils.setAlphaComponent(Theme.getColor("listSelectorSDK21"), 76)));
        this.linkView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.optionsView.setColorFilter(Theme.getColor("dialogTextGray3"));
        this.avatarsContainer.countTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlueText"));
        this.avatarsContainer.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), 0, ColorUtils.setAlphaComponent(Theme.getColor("windowBackgroundWhiteBlueText"), 76)));
        QRCodeBottomSheet qRCodeBottomSheet = this.qrCodeBottomSheet;
        if (qRCodeBottomSheet != null) {
            qRCodeBottomSheet.updateColors();
        }
    }

    public void setLink(String str) {
        this.link = str;
        if (str == null) {
            this.linkView.setText(LocaleController.getString("Loading", C3301R.string.Loading));
        } else if (str.startsWith("https://")) {
            this.linkView.setText(str.substring(8));
        } else {
            this.linkView.setText(str);
        }
    }

    public void setRevoke(boolean z) {
        if (z) {
            this.optionsView.setVisibility(8);
            this.shareView.setVisibility(8);
            this.copyView.setVisibility(8);
            this.removeView.setVisibility(0);
            return;
        }
        this.optionsView.setVisibility(0);
        this.shareView.setVisibility(0);
        this.copyView.setVisibility(0);
        this.removeView.setVisibility(8);
    }

    public void showOptions(boolean z) {
        this.optionsView.setVisibility(z ? 0 : 8);
    }

    public void hideRevokeOption(boolean z) {
        if (this.hideRevokeOption != z) {
            this.hideRevokeOption = z;
            this.optionsView.setVisibility(0);
            ImageView imageView = this.optionsView;
            imageView.setImageDrawable(ContextCompat.getDrawable(imageView.getContext(), C3301R.C3303drawable.ic_ab_other));
        }
    }

    /* renamed from: org.telegram.ui.Components.LinkActionView$AvatarsContainer */
    /* loaded from: classes6.dex */
    public class AvatarsContainer extends FrameLayout {
        AvatarsImageView avatarsImageView;
        TextView countTextView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AvatarsContainer(Context context) {
            super(context);
            LinkActionView.this = r6;
            this.avatarsImageView = new AvatarsImageView(context, false, r6) { // from class: org.telegram.ui.Components.LinkActionView.AvatarsContainer.1
                {
                    AvatarsContainer.this = this;
                }

                @Override // org.telegram.p048ui.Components.AvatarsImageView, android.view.View
                public void onMeasure(int i, int i2) {
                    int min = Math.min(3, LinkActionView.this.usersCount);
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(min == 0 ? 0 : ((min - 1) * 20) + 24 + 8), 1073741824), i2);
                }
            };
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            addView(linearLayout, LayoutHelper.createFrame(-2, -1, 1));
            TextView textView = new TextView(context);
            this.countTextView = textView;
            textView.setTextSize(1, 14.0f);
            this.countTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            linearLayout.addView(this.avatarsImageView, LayoutHelper.createLinear(-2, -1));
            linearLayout.addView(this.countTextView, LayoutHelper.createLinear(-2, -2, 16));
            setPadding(0, AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8));
            this.avatarsImageView.commitTransition(false);
        }
    }

    private void revokeLink() {
        if (this.fragment.getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.fragment.getParentActivity());
        builder.setMessage(LocaleController.getString("RevokeAlert", C3301R.string.RevokeAlert));
        builder.setTitle(LocaleController.getString("RevokeLink", C3301R.string.RevokeLink));
        builder.setPositiveButton(LocaleController.getString("RevokeButton", C3301R.string.RevokeButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                LinkActionView.this.lambda$revokeLink$12(dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.show();
    }

    public /* synthetic */ void lambda$revokeLink$12(DialogInterface dialogInterface, int i) {
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.revokeLink();
        }
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    public void setUsers(int i, ArrayList<TLRPC$User> arrayList) {
        this.usersCount = i;
        if (i == 0) {
            this.avatarsContainer.setVisibility(8);
            setPadding(AndroidUtilities.m50dp(19), AndroidUtilities.m50dp(18), AndroidUtilities.m50dp(19), AndroidUtilities.m50dp(18));
        } else {
            this.avatarsContainer.setVisibility(0);
            setPadding(AndroidUtilities.m50dp(19), AndroidUtilities.m50dp(18), AndroidUtilities.m50dp(19), AndroidUtilities.m50dp(10));
            this.avatarsContainer.countTextView.setText(LocaleController.formatPluralString("PeopleJoined", i, new Object[0]));
            this.avatarsContainer.requestLayout();
        }
        if (arrayList != null) {
            for (int i2 = 0; i2 < 3; i2++) {
                if (i2 < arrayList.size()) {
                    MessagesController.getInstance(UserConfig.selectedAccount).putUser(arrayList.get(i2), false);
                    this.avatarsContainer.avatarsImageView.setObject(i2, UserConfig.selectedAccount, arrayList.get(i2));
                } else {
                    this.avatarsContainer.avatarsImageView.setObject(i2, UserConfig.selectedAccount, null);
                }
            }
            this.avatarsContainer.avatarsImageView.commitTransition(false);
        }
    }

    public void loadUsers(final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, long j) {
        if (tLRPC$TL_chatInviteExported == null) {
            setUsers(0, null);
            return;
        }
        setUsers(tLRPC$TL_chatInviteExported.usage, tLRPC$TL_chatInviteExported.importers);
        if (tLRPC$TL_chatInviteExported.usage <= 0 || tLRPC$TL_chatInviteExported.importers != null || this.loadingImporters) {
            return;
        }
        TLRPC$TL_messages_getChatInviteImporters tLRPC$TL_messages_getChatInviteImporters = new TLRPC$TL_messages_getChatInviteImporters();
        tLRPC$TL_messages_getChatInviteImporters.link = tLRPC$TL_chatInviteExported.link;
        tLRPC$TL_messages_getChatInviteImporters.peer = MessagesController.getInstance(UserConfig.selectedAccount).getInputPeer(-j);
        tLRPC$TL_messages_getChatInviteImporters.offset_user = new TLRPC$TL_inputUserEmpty();
        tLRPC$TL_messages_getChatInviteImporters.limit = Math.min(tLRPC$TL_chatInviteExported.usage, 3);
        this.loadingImporters = true;
        ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tLRPC$TL_messages_getChatInviteImporters, new RequestDelegate() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda13
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                LinkActionView.this.lambda$loadUsers$14(tLRPC$TL_chatInviteExported, tLObject, tLRPC$TL_error);
            }
        });
    }

    public /* synthetic */ void lambda$loadUsers$14(final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.LinkActionView$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                LinkActionView.this.lambda$loadUsers$13(tLRPC$TL_error, tLObject, tLRPC$TL_chatInviteExported);
            }
        });
    }

    public /* synthetic */ void lambda$loadUsers$13(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
        this.loadingImporters = false;
        if (tLRPC$TL_error == null) {
            TLRPC$TL_messages_chatInviteImporters tLRPC$TL_messages_chatInviteImporters = (TLRPC$TL_messages_chatInviteImporters) tLObject;
            if (tLRPC$TL_chatInviteExported.importers == null) {
                tLRPC$TL_chatInviteExported.importers = new ArrayList<>(3);
            }
            tLRPC$TL_chatInviteExported.importers.clear();
            for (int i = 0; i < tLRPC$TL_messages_chatInviteImporters.users.size(); i++) {
                tLRPC$TL_chatInviteExported.importers.addAll(tLRPC$TL_messages_chatInviteImporters.users);
            }
            setUsers(tLRPC$TL_chatInviteExported.usage, tLRPC$TL_chatInviteExported.importers);
        }
    }

    public void setPermanent(boolean z) {
        this.permanent = z;
    }

    public void setCanEdit(boolean z) {
        this.canEdit = z;
    }
}
