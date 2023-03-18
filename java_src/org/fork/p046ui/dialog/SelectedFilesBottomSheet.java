package org.fork.p046ui.dialog;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.utils.extentions.common.ThrowableExtKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.fork.p046ui.dialog.SelectedFilesBottomSheet;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.CombinedDrawable;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
import timber.log.Timber;
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet */
/* loaded from: classes4.dex */
public final class SelectedFilesBottomSheet extends BottomSheet {
    private final Activity activity;
    private final Lazy bottomShadow$delegate;
    private final List<FileItem> files;
    private boolean ignoreLayout;
    private int itemWidth;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final Callbacks$Callback1<ArrayList<Uri>> onFilesChangedAction;
    private final Lazy saveButton$delegate;
    private int scrollOffsetY;
    private AnimatorSet shadowAnimation;
    private boolean shadowShowed;
    private final Lazy titleTextView$delegate;
    private final Lazy topShadow$delegate;
    private final List<Uri> uris;

    static {
        new Companion(null);
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public final Callbacks$Callback1<ArrayList<Uri>> getOnFilesChangedAction() {
        return this.onFilesChangedAction;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SelectedFilesBottomSheet(Activity activity, List<? extends Uri> uris, Callbacks$Callback1<ArrayList<Uri>> onFilesChangedAction) {
        super(activity, false);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(uris, "uris");
        Intrinsics.checkNotNullParameter(onFilesChangedAction, "onFilesChangedAction");
        this.activity = activity;
        this.uris = uris;
        this.onFilesChangedAction = onFilesChangedAction;
        lazy = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$titleTextView$2(this));
        this.titleTextView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$topShadow$2(this));
        this.topShadow$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$listView$2(this));
        this.listView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$bottomShadow$2(this));
        this.bottomShadow$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$saveButton$2(this));
        this.saveButton$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$listAdapter$2(this));
        this.listAdapter$delegate = lazy6;
        this.files = new ArrayList();
        RootView rootView = new RootView();
        rootView.setWillNotDraw(false);
        rootView.addView(getTopShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 48, 0, 54, 0, 0));
        rootView.addView(getTitleTextView(), LayoutHelper.createFrame(-1, 56, 48));
        rootView.addView(getListView(), LayoutHelper.createFrame(-1, -1, 48, 0, 54, 0, 48));
        rootView.addView(getBottomShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 80, 0, 0, 0, 48));
        rootView.addView(getSaveButton(), LayoutHelper.createFrame(-1, 48, 80));
        this.containerView = rootView;
        setupListeners();
        mapUrisToUi();
        final FilesAdapter listAdapter = getListAdapter();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.ui.dialog.SelectedFilesBottomSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                SelectedFilesBottomSheet.FilesAdapter.this.notifyDataSetChanged();
            }
        }, 150L);
    }

    private final TextView getTitleTextView() {
        return (TextView) this.titleTextView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getTopShadow() {
        return (View) this.topShadow$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SelectedFilesBottomSheet$initListView$1 getListView() {
        return (SelectedFilesBottomSheet$initListView$1) this.listView$delegate.getValue();
    }

    private final View getBottomShadow() {
        return (View) this.bottomShadow$delegate.getValue();
    }

    private final TextView getSaveButton() {
        return (TextView) this.saveButton$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FilesAdapter getListAdapter() {
        return (FilesAdapter) this.listAdapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTitleTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.singleLine(textView);
        ViewExtKt.setHorizontalPadding(textView, 23);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(16);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setText(LocaleController.getInternalString(C3286R.string.multiple_files_sending_selected));
        textView.setTextColor(getThemedColor("dialogTextBlack"));
        textView.setTextSize(1, 20.0f);
        textView.setLinkTextColor(getThemedColor("dialogTextLink"));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initSaveButton() {
        TextView textView = new TextView(getContext());
        ViewExtKt.setHorizontalPadding(textView, 18);
        textView.setAllCaps(true);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(17);
        textView.setBackground(Theme.createSelectorWithBackgroundDrawable(getThemedColor("dialogBackground"), getThemedColor("listSelectorSDK21")));
        textView.setText(LocaleController.getString("Save", C3286R.string.Save));
        textView.setTextColor(getThemedColor("dialogTextBlue2"));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.recyclerview.widget.RecyclerView, org.fork.ui.dialog.SelectedFilesBottomSheet$initListView$1, android.view.ViewGroup, org.telegram.ui.Components.RecyclerListView] */
    public final SelectedFilesBottomSheet$initListView$1 initListView() {
        final Context context = getContext();
        ?? r1 = new RecyclerListView(context) { // from class: org.fork.ui.dialog.SelectedFilesBottomSheet$initListView$1
            @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (SelectedFilesBottomSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        r1.setLayoutManager(new LinearLayoutManager(r1.getContext()));
        r1.setAdapter(getListAdapter());
        r1.setVerticalScrollBarEnabled(false);
        r1.setClipToPadding(false);
        r1.setEnabled(true);
        r1.setGlowColor(getThemedColor("dialogScrollGlow"));
        return r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View initShadow(boolean z) {
        View view = new View(getContext());
        view.setBackgroundColor(getThemedColor("dialogShadowLine"));
        view.setVisibility(z ? 8 : 0);
        return view;
    }

    private final void mapUrisToUi() {
        Long longOrNull;
        FileItem fileItem;
        List<Uri> list = this.uris;
        List<FileItem> list2 = this.files;
        for (Uri uri : list) {
            Cursor query = ApplicationLoader.applicationContext.getContentResolver().query(uri, null, null, null, null);
            if (query != null) {
                Intrinsics.checkNotNullExpressionValue(query, "ApplicationLoader.applic…nts.Symbols.EMPTY_STRING)");
                query.moveToFirst();
                String string = query.getString(query.getColumnIndex("_display_name"));
                Intrinsics.checkNotNullExpressionValue(string, "getString(getColumnIndex…bleColumns.DISPLAY_NAME))");
                String string2 = query.getString(query.getColumnIndex("_size"));
                Intrinsics.checkNotNullExpressionValue(string2, "getString(getColumnIndex(OpenableColumns.SIZE))");
                longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(string2);
                String formatFileSize = AndroidUtilities.formatFileSize(longOrNull != null ? longOrNull.longValue() : 0L);
                Intrinsics.checkNotNullExpressionValue(formatFileSize, "formatFileSize(\n        …                        )");
                FileItem fileItem2 = new FileItem(uri, string, formatFileSize);
                query.close();
                fileItem = fileItem2;
            } else {
                fileItem = new FileItem(uri, "", "");
            }
            list2.add(fileItem);
        }
    }

    private final void setupListeners() {
        SelectedFilesBottomSheet$initListView$1 listView = getListView();
        listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.fork.ui.dialog.SelectedFilesBottomSheet$setupListeners$1$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                SelectedFilesBottomSheet.this.updateLayout();
            }
        });
        listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.fork.ui.dialog.SelectedFilesBottomSheet$$ExternalSyntheticLambda4
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                SelectedFilesBottomSheet.setupListeners$lambda$8$lambda$7(SelectedFilesBottomSheet.this, view, i);
            }
        });
        getListAdapter().setOnItemDeleteClick(new SelectedFilesBottomSheet$setupListeners$2(this));
        ViewExtKt.safeThrottledClick$default(getSaveButton(), 0L, new SelectedFilesBottomSheet$setupListeners$3(this), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$8$lambda$7(SelectedFilesBottomSheet this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openFile(this$0.files.get(i));
    }

    private final void openFile(final FileItem fileItem) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.ui.dialog.SelectedFilesBottomSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                SelectedFilesBottomSheet.openFile$lambda$16(SelectedFilesBottomSheet.FileItem.this, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openFile$lambda$16(final FileItem fileItem, final SelectedFilesBottomSheet this$0) {
        Object m1463constructorimpl;
        Intrinsics.checkNotNullParameter(fileItem, "$fileItem");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        File checkDirectory = FileLoader.checkDirectory(3);
        String absolutePath = checkDirectory != null ? checkDirectory.getAbsolutePath() : null;
        if (absolutePath == null) {
            return;
        }
        final File file = new File(absolutePath + File.separator + fileItem.getName());
        try {
            Result.Companion companion = Result.Companion;
            InputStream openInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(fileItem.getUri());
            if (openInputStream != null) {
                Intrinsics.checkNotNullExpressionValue(openInputStream, "ApplicationLoader.applic…    ?: return@runCatching");
                byte[] bArr = new byte[1024];
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                while (true) {
                    int read = openInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                    fileOutputStream.flush();
                }
                openInputStream.close();
                fileOutputStream.close();
            }
            m1463constructorimpl = Result.m1463constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1463constructorimpl = Result.m1463constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable m1464exceptionOrNullimpl = Result.m1464exceptionOrNullimpl(m1463constructorimpl);
        if (m1464exceptionOrNullimpl != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.ui.dialog.SelectedFilesBottomSheet$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SelectedFilesBottomSheet.openFile$lambda$16$lambda$13$lambda$12(m1464exceptionOrNullimpl);
                }
            });
        }
        if (Result.m1466isSuccessimpl(m1463constructorimpl)) {
            Unit unit = (Unit) m1463constructorimpl;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.ui.dialog.SelectedFilesBottomSheet$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SelectedFilesBottomSheet.openFile$lambda$16$lambda$15$lambda$14(file, fileItem, this$0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openFile$lambda$16$lambda$13$lambda$12(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        Timber.m4e(it);
        ThrowableExtKt.showToast(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openFile$lambda$16$lambda$15$lambda$14(File file, FileItem fileItem, SelectedFilesBottomSheet this$0) {
        Intrinsics.checkNotNullParameter(file, "$file");
        Intrinsics.checkNotNullParameter(fileItem, "$fileItem");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String name = fileItem.getName();
        Uri fromFile = Uri.fromFile(file);
        Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(this)");
        AndroidUtilities.openForView(file, name, Utilities.getMimeType(fromFile), this$0.activity, this$0.resourcesProvider);
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
        getTopShadow().setTranslationY(f);
        this.containerView.invalidate();
    }

    private final void runShadowAnimation(final boolean z) {
        if (this.shadowShowed != z) {
            this.shadowShowed = z;
            if (z) {
                ViewExtKt.visible(getTopShadow());
            }
            AnimatorSet animatorSet = this.shadowAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            Animator[] animatorArr = new Animator[1];
            View topShadow = getTopShadow();
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            animatorArr[0] = ObjectAnimator.ofFloat(topShadow, property, fArr);
            animatorSet2.playTogether(animatorArr);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.fork.ui.dialog.SelectedFilesBottomSheet$runShadowAnimation$1$1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    AnimatorSet animatorSet3;
                    AnimatorSet animatorSet4;
                    View topShadow2;
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    animatorSet3 = SelectedFilesBottomSheet.this.shadowAnimation;
                    if (animatorSet3 != null) {
                        animatorSet4 = SelectedFilesBottomSheet.this.shadowAnimation;
                        if (Intrinsics.areEqual(animatorSet4, animation)) {
                            if (!z) {
                                topShadow2 = SelectedFilesBottomSheet.this.getTopShadow();
                                ViewExtKt.invisible(topShadow2);
                            }
                            SelectedFilesBottomSheet.this.shadowAnimation = null;
                        }
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animation) {
                    AnimatorSet animatorSet3;
                    AnimatorSet animatorSet4;
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    animatorSet3 = SelectedFilesBottomSheet.this.shadowAnimation;
                    if (animatorSet3 != null) {
                        animatorSet4 = SelectedFilesBottomSheet.this.shadowAnimation;
                        if (Intrinsics.areEqual(animatorSet4, animation)) {
                            SelectedFilesBottomSheet.this.shadowAnimation = null;
                        }
                    }
                }
            });
            animatorSet2.setDuration(150L);
            animatorSet2.start();
            this.shadowAnimation = animatorSet2;
        }
    }

    /* compiled from: SelectedFilesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$RootView */
    /* loaded from: classes4.dex */
    private final class RootView extends FrameLayout {
        private boolean fullHeight;
        private int lastNotifyWidth;
        private final RectF rect;

        public RootView() {
            super(SelectedFilesBottomSheet.this.getContext());
            this.rect = new RectF();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            Intrinsics.checkNotNullParameter(ev, "ev");
            if (ev.getAction() == 0 && SelectedFilesBottomSheet.this.scrollOffsetY != 0 && ev.getY() < SelectedFilesBottomSheet.this.scrollOffsetY) {
                SelectedFilesBottomSheet.this.dismiss();
                return true;
            }
            return super.onInterceptTouchEvent(ev);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return !SelectedFilesBottomSheet.this.isDismissed() && super.onTouchEvent(e);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i2);
            SelectedFilesBottomSheet.this.ignoreLayout = true;
            setPadding(0, AndroidUtilities.statusBarHeight, 0, 0);
            SelectedFilesBottomSheet.this.ignoreLayout = false;
            SelectedFilesBottomSheet.this.itemWidth = View.MeasureSpec.getSize(i);
            int m50dp = AndroidUtilities.m50dp(110) + (SelectedFilesBottomSheet.this.files.size() * AndroidUtilities.m50dp(60)) + ((BottomSheet) SelectedFilesBottomSheet.this).backgroundPaddingTop + AndroidUtilities.statusBarHeight;
            int i3 = size / 5;
            int i4 = ((float) m50dp) < ((float) i3) * 3.2f ? 0 : i3 * 2;
            if (i4 != 0 && m50dp < size) {
                i4 -= size - m50dp;
            }
            if (i4 == 0) {
                i4 = ((BottomSheet) SelectedFilesBottomSheet.this).backgroundPaddingTop;
            }
            if (SelectedFilesBottomSheet.this.getListView().getPaddingTop() != i4) {
                SelectedFilesBottomSheet.this.ignoreLayout = true;
                SelectedFilesBottomSheet.this.getListView().setPadding(0, i4, 0, 0);
                SelectedFilesBottomSheet.this.ignoreLayout = false;
            }
            this.fullHeight = m50dp >= size;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(m50dp, size), 1073741824));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            if (this.lastNotifyWidth != i5) {
                this.lastNotifyWidth = i5;
                SelectedFilesBottomSheet.this.getListAdapter().notifyDataSetChanged();
            }
            super.onLayout(z, i, i2, i3, i4);
            SelectedFilesBottomSheet.this.updateLayout();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (SelectedFilesBottomSheet.this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00b3  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0145  */
        /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r12) {
            /*
                Method dump skipped, instructions count: 402
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.fork.p046ui.dialog.SelectedFilesBottomSheet.RootView.onDraw(android.graphics.Canvas):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SelectedFilesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$FilesAdapter */
    /* loaded from: classes4.dex */
    public final class FilesAdapter extends RecyclerListView.SelectionAdapter {
        private Function1<? super Integer, Unit> onItemDeleteClick = SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1.INSTANCE;

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return true;
        }

        public FilesAdapter() {
        }

        public final Function1<Integer, Unit> getOnItemDeleteClick() {
            return this.onItemDeleteClick;
        }

        public final void setOnItemDeleteClick(Function1<? super Integer, Unit> function1) {
            Intrinsics.checkNotNullParameter(function1, "<set-?>");
            this.onItemDeleteClick = function1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SelectedFilesBottomSheet.this.files.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            SelectedFilesBottomSheet selectedFilesBottomSheet = SelectedFilesBottomSheet.this;
            Context context = selectedFilesBottomSheet.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            return new RecyclerListView.Holder(new FileView(selectedFilesBottomSheet, context));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type org.fork.ui.dialog.SelectedFilesBottomSheet.FileView");
            ((FileView) view).setupView((FileItem) SelectedFilesBottomSheet.this.files.get(i), new SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1(this, i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SelectedFilesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$FileView */
    /* loaded from: classes4.dex */
    public final class FileView extends LinearLayout {
        private final Lazy deleteButton$delegate;
        private final Lazy imageView$delegate;
        private final Lazy nameTextView$delegate;
        private final Lazy sizeTextView$delegate;
        final /* synthetic */ SelectedFilesBottomSheet this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileView(SelectedFilesBottomSheet selectedFilesBottomSheet, Context context) {
            super(context);
            Lazy lazy;
            Lazy lazy2;
            Lazy lazy3;
            Lazy lazy4;
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = selectedFilesBottomSheet;
            lazy = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$FileView$imageView$2(this));
            this.imageView$delegate = lazy;
            lazy2 = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$FileView$nameTextView$2(this));
            this.nameTextView$delegate = lazy2;
            lazy3 = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$FileView$sizeTextView$2(this));
            this.sizeTextView$delegate = lazy3;
            lazy4 = LazyKt__LazyJVMKt.lazy(new SelectedFilesBottomSheet$FileView$deleteButton$2(this));
            this.deleteButton$delegate = lazy4;
            com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(this, AndroidUtilities.m50dp(16));
            com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingVertical(this, AndroidUtilities.m50dp(8));
            setGravity(16);
            addView(getImageView(), LayoutHelper.createLinear(-2, -2));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.addView(getNameTextView(), LayoutHelper.createLinear(-1, -2));
            linearLayout.addView(getSizeTextView(), LayoutHelper.createLinear(-1, -2, 0, 4, 0, 0));
            addView(linearLayout, LayoutHelper.createLinear(0, -2, 1.0f, 8, 0, 0, 0));
            addView(getDeleteButton(), LayoutHelper.createLinear(32, 32, 16, 0, 0, 0));
        }

        private final ImageView getImageView() {
            return (ImageView) this.imageView$delegate.getValue();
        }

        private final TextView getNameTextView() {
            return (TextView) this.nameTextView$delegate.getValue();
        }

        private final TextView getSizeTextView() {
            return (TextView) this.sizeTextView$delegate.getValue();
        }

        private final ImageView getDeleteButton() {
            return (ImageView) this.deleteButton$delegate.getValue();
        }

        public final void setupView(FileItem fileItem, Function0<Unit> onItemDeleteClick) {
            Intrinsics.checkNotNullParameter(fileItem, "fileItem");
            Intrinsics.checkNotNullParameter(onItemDeleteClick, "onItemDeleteClick");
            getNameTextView().setText(fileItem.getName());
            getSizeTextView().setText(fileItem.getSize());
            ViewExtKt.safeThrottledClick$default(getDeleteButton(), 0L, new SelectedFilesBottomSheet$FileView$setupView$2(onItemDeleteClick), 1, null);
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.this$0.itemWidth, 1073741824), i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ImageView initImageView() {
            ImageView imageView = new ImageView(getContext());
            SelectedFilesBottomSheet selectedFilesBottomSheet = this.this$0;
            CombinedDrawable createCircleDrawableWithIcon = Theme.createCircleDrawableWithIcon(AndroidUtilities.m50dp(44), C3286R.C3288drawable.msg_round_file_s);
            Theme.setCombinedDrawableColor(createCircleDrawableWithIcon, selectedFilesBottomSheet.getThemedColor("chat_outMediaIcon"), false);
            Theme.setCombinedDrawableColor(createCircleDrawableWithIcon, selectedFilesBottomSheet.getThemedColor("chat_inMediaIcon"), true);
            imageView.setImageDrawable(createCircleDrawableWithIcon);
            return imageView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final TextView initNameTextView() {
            TextView textView = new TextView(getContext());
            SelectedFilesBottomSheet selectedFilesBottomSheet = this.this$0;
            textView.setTextSize(1, 16.0f);
            textView.setTextColor(selectedFilesBottomSheet.getThemedColor("windowBackgroundWhiteBlackText"));
            ViewExtKt.singleLine(textView);
            textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            ViewExtKt.withMediumTypeface(textView);
            return textView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final TextView initSizeTextView() {
            TextView textView = new TextView(getContext());
            SelectedFilesBottomSheet selectedFilesBottomSheet = this.this$0;
            textView.setTextSize(1, 12.0f);
            textView.setTextColor(selectedFilesBottomSheet.getThemedColor("windowBackgroundWhiteGrayText"));
            return textView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ImageView initDeleteButton() {
            ImageView imageView = new ImageView(getContext());
            SelectedFilesBottomSheet selectedFilesBottomSheet = this.this$0;
            imageView.setColorFilter(new PorterDuffColorFilter(selectedFilesBottomSheet.getThemedColor("chat_replyPanelClose"), PorterDuff.Mode.MULTIPLY));
            imageView.setContentDescription(LocaleController.getString("Delete", C3286R.string.Delete));
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C3286R.C3288drawable.input_clear);
            imageView.setBackground(Theme.createSelectorDrawable(selectedFilesBottomSheet.getThemedColor("listSelectorSDK21"), 3));
            return imageView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SelectedFilesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$FileItem */
    /* loaded from: classes4.dex */
    public static final class FileItem {
        private final String name;
        private final String size;
        private final Uri uri;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof FileItem) {
                FileItem fileItem = (FileItem) obj;
                return Intrinsics.areEqual(this.uri, fileItem.uri) && Intrinsics.areEqual(this.name, fileItem.name) && Intrinsics.areEqual(this.size, fileItem.size);
            }
            return false;
        }

        public int hashCode() {
            return (((this.uri.hashCode() * 31) + this.name.hashCode()) * 31) + this.size.hashCode();
        }

        public String toString() {
            return "FileItem(uri=" + this.uri + ", name=" + this.name + ", size=" + this.size + ')';
        }

        public FileItem(Uri uri, String name, String size) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(size, "size");
            this.uri = uri;
            this.name = name;
            this.size = size;
        }

        public final Uri getUri() {
            return this.uri;
        }

        public final String getName() {
            return this.name;
        }

        public final String getSize() {
            return this.size;
        }
    }

    /* compiled from: SelectedFilesBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.SelectedFilesBottomSheet$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
