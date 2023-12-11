package com.iMe.fork.p023ui.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.fork.enums.FilterActivityType;
import com.iMe.fork.p023ui.dialog.SelectIconBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.storage.data.repository.topics.Topic;
import com.iMe.storage.domain.model.filters.FilterIcon;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.model.filter.FilterIconExtKt;
import com.iMe.utils.extentions.model.topic.TopicExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.ExtendedGridLayoutManager;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.ReportAlert;
/* compiled from: SelectIconBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectIconBottomSheet */
/* loaded from: classes3.dex */
public final class SelectIconBottomSheet extends BottomSheet {
    private final Activity activity;
    private final FilterIcon currentFilterIcon;
    private final Topic currentTopicIcon;
    private final Lazy deleteButton$delegate;
    private final Lazy icons$delegate;
    private final Lazy listView$delegate;
    private final Lazy rootView$delegate;
    private final Callbacks$Callback2<FilterIcon, Topic> selectIconDelegate;
    private final FilterActivityType type;

    /* compiled from: SelectIconBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectIconBottomSheet$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FilterActivityType.values().length];
            try {
                iArr[FilterActivityType.FILTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FilterActivityType.TOPIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public final FilterActivityType getType() {
        return this.type;
    }

    public final FilterIcon getCurrentFilterIcon() {
        return this.currentFilterIcon;
    }

    public final Topic getCurrentTopicIcon() {
        return this.currentTopicIcon;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectIconBottomSheet(Activity activity, FilterActivityType type, FilterIcon filterIcon, Topic topic, Callbacks$Callback2<FilterIcon, Topic> selectIconDelegate) {
        super(activity, false);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(selectIconDelegate, "selectIconDelegate");
        this.activity = activity;
        this.type = type;
        this.currentFilterIcon = filterIcon;
        this.currentTopicIcon = topic;
        this.selectIconDelegate = selectIconDelegate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends Enum<?>>>() { // from class: com.iMe.fork.ui.dialog.SelectIconBottomSheet$icons$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends Enum<?>> invoke() {
                List<? extends Enum<?>> initIcons;
                initIcons = SelectIconBottomSheet.this.initIcons();
                return initIcons;
            }
        });
        this.icons$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.fork.ui.dialog.SelectIconBottomSheet$rootView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initRootView;
                initRootView = SelectIconBottomSheet.this.initRootView();
                return initRootView;
            }
        });
        this.rootView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.dialog.SelectIconBottomSheet$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = SelectIconBottomSheet.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ReportAlert.BottomSheetCell>() { // from class: com.iMe.fork.ui.dialog.SelectIconBottomSheet$deleteButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ReportAlert.BottomSheetCell invoke() {
                ReportAlert.BottomSheetCell initDeleteButton;
                initDeleteButton = SelectIconBottomSheet.this.initDeleteButton();
                return initDeleteButton;
            }
        });
        this.deleteButton$delegate = lazy4;
        setTitle(LocaleController.getInternalString(C3632R.string.select_icon), true);
        setCustomView(getRootView());
        setupListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Enum<?>> getIcons() {
        return (List) this.icons$delegate.getValue();
    }

    private final LinearLayout getRootView() {
        return (LinearLayout) this.rootView$delegate.getValue();
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    private final ReportAlert.BottomSheetCell getDeleteButton() {
        return (ReportAlert.BottomSheetCell) this.deleteButton$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Enum<?>> initIcons() {
        List<Enum<?>> list;
        List<Enum<?>> list2;
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i == 1) {
            list = ArraysKt___ArraysKt.toList(FilterIcon.values());
            return list;
        } else if (i == 2) {
            list2 = ArraysKt___ArraysKt.toList(Topic.values());
            return list2;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initRootView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.addView(getListView(), LayoutHelper.createLinear(-2, 0, 1.0f));
        if (this.currentFilterIcon != null || this.currentTopicIcon != null) {
            setApplyBottomPadding(false);
            linearLayout.addView(getDeleteButton(), LayoutHelper.createLinear(-1, 50));
        }
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getContext());
        recyclerListView.setOverScrollMode(2);
        recyclerListView.setLayoutManager(new ExtendedGridLayoutManager(recyclerListView.getContext(), AndroidUtilities.isInLandscapeMode(this.activity) ? 14 : 7));
        recyclerListView.setAdapter(new GridAdapter());
        ViewExtKt.setHorizontalPadding(recyclerListView, 10);
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ReportAlert.BottomSheetCell initDeleteButton() {
        ReportAlert.BottomSheetCell bottomSheetCell = new ReportAlert.BottomSheetCell(getContext(), null);
        bottomSheetCell.setBackground(null);
        bottomSheetCell.getBackgroundPublic().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.SelectIconBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectIconBottomSheet.initDeleteButton$lambda$3$lambda$2(SelectIconBottomSheet.this, view);
            }
        });
        bottomSheetCell.setText(LocaleController.getString("Delete", C3632R.string.Delete));
        return bottomSheetCell;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initDeleteButton$lambda$3$lambda$2(SelectIconBottomSheet this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectIconDelegate.invoke(null, null);
        this$0.dismiss();
    }

    private final void setupListeners() {
        getListView().setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.dialog.SelectIconBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                SelectIconBottomSheet.setupListeners$lambda$4(SelectIconBottomSheet.this, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void setupListeners$lambda$4(SelectIconBottomSheet this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Enum<?> r3 = this$0.getIcons().get(i);
        if (this$0.currentFilterIcon == r3 || this$0.currentTopicIcon == r3) {
            return;
        }
        FilterActivityType filterActivityType = this$0.type;
        if (filterActivityType == FilterActivityType.FILTER && (r3 instanceof FilterIcon)) {
            this$0.selectIconDelegate.invoke(r3, null);
        } else if (filterActivityType != FilterActivityType.TOPIC || !(r3 instanceof Topic)) {
            return;
        } else {
            this$0.selectIconDelegate.invoke(null, r3);
        }
        this$0.dismiss();
    }

    /* compiled from: SelectIconBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectIconBottomSheet$GridAdapter */
    /* loaded from: classes3.dex */
    public final class GridAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return true;
        }

        public GridAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SelectIconBottomSheet.this.getIcons().size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            SelectIconBottomSheet selectIconBottomSheet = SelectIconBottomSheet.this;
            Context context = selectIconBottomSheet.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            return new RecyclerListView.Holder(new IconView(selectIconBottomSheet, context));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            int iconResId;
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            if (view instanceof IconView) {
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                SelectIconBottomSheet selectIconBottomSheet = SelectIconBottomSheet.this;
                IconView iconView = (IconView) view;
                Enum r5 = (Enum) selectIconBottomSheet.getIcons().get(i);
                if (selectIconBottomSheet.getType() == FilterActivityType.FILTER && (r5 instanceof FilterIcon)) {
                    iconResId = FilterIconExtKt.iconInfo((FilterIcon) r5).getOutlinedIcon();
                } else if (selectIconBottomSheet.getType() != FilterActivityType.TOPIC || !(r5 instanceof Topic)) {
                    return;
                } else {
                    iconResId = TopicExtKt.info((Topic) r5).getIconResId();
                }
                iconView.setIcon(iconResId, selectIconBottomSheet.getCurrentFilterIcon() == r5 || selectIconBottomSheet.getCurrentTopicIcon() == r5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SelectIconBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectIconBottomSheet$IconView */
    /* loaded from: classes3.dex */
    public final class IconView extends FrameLayout {
        private final Lazy checkBox$delegate;
        private final Lazy circleView$delegate;
        private final Lazy imageView$delegate;
        final /* synthetic */ SelectIconBottomSheet this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IconView(SelectIconBottomSheet selectIconBottomSheet, Context context) {
            super(context);
            Lazy lazy;
            Lazy lazy2;
            Lazy lazy3;
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = selectIconBottomSheet;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.fork.ui.dialog.SelectIconBottomSheet$IconView$circleView$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final View invoke() {
                    View initCircleView;
                    initCircleView = SelectIconBottomSheet.IconView.this.initCircleView();
                    return initCircleView;
                }
            });
            this.circleView$delegate = lazy;
            lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.dialog.SelectIconBottomSheet$IconView$imageView$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final ImageView invoke() {
                    ImageView initImageView;
                    initImageView = SelectIconBottomSheet.IconView.this.initImageView();
                    return initImageView;
                }
            });
            this.imageView$delegate = lazy2;
            lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<CheckBox2>() { // from class: com.iMe.fork.ui.dialog.SelectIconBottomSheet$IconView$checkBox$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final CheckBox2 invoke() {
                    CheckBox2 initCheckBox;
                    initCheckBox = SelectIconBottomSheet.IconView.this.initCheckBox();
                    return initCheckBox;
                }
            });
            this.checkBox$delegate = lazy3;
            addView(getCircleView(), LayoutHelper.createFrame(-1, -1, 17, 3, 3, 3, 3));
            addView(getImageView(), LayoutHelper.createFrame(selectIconBottomSheet.getType().getIconSize(), selectIconBottomSheet.getType().getIconSize(), 17));
            addView(getCheckBox(), LayoutHelper.createFrame(18, 18, 85));
        }

        private final View getCircleView() {
            return (View) this.circleView$delegate.getValue();
        }

        private final ImageView getImageView() {
            return (ImageView) this.imageView$delegate.getValue();
        }

        private final CheckBox2 getCheckBox() {
            return (CheckBox2) this.checkBox$delegate.getValue();
        }

        public final void setIcon(int i, boolean z) {
            GradientDrawable gradientDrawable;
            View circleView = getCircleView();
            if (z) {
                gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(1);
                gradientDrawable.setStroke(AndroidUtilities.m105dp(2.0f), Theme.getColor(Theme.key_chats_actionBackground));
            } else {
                gradientDrawable = null;
            }
            circleView.setBackground(gradientDrawable);
            getImageView().setImageResource(i);
            getCheckBox().setChecked(z, false);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final View initCircleView() {
            return new View(getContext());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ImageView initImageView() {
            ImageView imageView = new ImageView(getContext());
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_actionBackground), PorterDuff.Mode.SRC_IN));
            return imageView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CheckBox2 initCheckBox() {
            CheckBox2 checkBox2 = new CheckBox2(getContext(), 18);
            checkBox2.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
            checkBox2.setDrawUnchecked(false);
            return checkBox2;
        }
    }

    /* compiled from: SelectIconBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectIconBottomSheet$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
