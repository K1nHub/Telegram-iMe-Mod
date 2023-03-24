package org.telegram.p048ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.RelativeSizeSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.StatsController;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Components.CacheChart;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.TypefaceSpan;
import org.telegram.p048ui.Components.ViewPagerFixed;
import org.telegram.p048ui.DataUsage2Activity;
/* renamed from: org.telegram.ui.DataUsage2Activity */
/* loaded from: classes5.dex */
public class DataUsage2Activity extends BaseFragment {
    private boolean changeStatusBar;
    private ViewPagerFixed pager;
    private Theme.ResourcesProvider resourcesProvider;
    private ViewPagerFixed.TabsView tabsView;
    private static String[] colors = {"statisticChartLine_blue", "statisticChartLine_green", "statisticChartLine_lightblue", "statisticChartLine_golden", "statisticChartLine_red", "statisticChartLine_purple", "statisticChartLine_cyan"};
    private static int[] particles = {C3301R.C3303drawable.msg_filled_data_videos, C3301R.C3303drawable.msg_filled_data_files, C3301R.C3303drawable.msg_filled_data_photos, C3301R.C3303drawable.msg_filled_data_messages, C3301R.C3303drawable.msg_filled_data_music, C3301R.C3303drawable.msg_filled_data_voice, C3301R.C3303drawable.msg_filled_data_calls};
    private static int[] titles = {C3301R.string.LocalVideoCache, C3301R.string.LocalDocumentCache, C3301R.string.LocalPhotoCache, C3301R.string.MessagesSettings, C3301R.string.LocalMusicCache, C3301R.string.LocalAudioCache, C3301R.string.CallsDataUsage};
    private static int[] stats = {2, 5, 4, 1, 7, 3, 0};

    public DataUsage2Activity() {
        this(null);
    }

    public DataUsage2Activity(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C3301R.C3303drawable.ic_ab_back);
        this.actionBar.setTitle(LocaleController.getString("NetworkUsage", C3301R.string.NetworkUsage));
        this.actionBar.setBackgroundColor(getThemedColor("actionBarActionModeDefault"));
        this.actionBar.setTitleColor(getThemedColor("windowBackgroundWhiteBlackText"));
        this.actionBar.setItemsColor(getThemedColor("windowBackgroundWhiteBlackText"), false);
        this.actionBar.setItemsBackgroundColor(getThemedColor("listSelectorSDK21"), false);
        this.actionBar.setCastShadows(false);
        this.actionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.DataUsage2Activity.1
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    DataUsage2Activity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.DataUsage2Activity.2
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824));
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                if (DataUsage2Activity.this.getParentLayout() == null || DataUsage2Activity.this.tabsView == null) {
                    return;
                }
                float measuredHeight = DataUsage2Activity.this.tabsView.getMeasuredHeight();
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, measuredHeight, getWidth(), measuredHeight, Theme.dividerPaint);
            }
        };
        frameLayout.setBackgroundColor(getThemedColor("windowBackgroundGray"));
        ViewPagerFixed viewPagerFixed = new ViewPagerFixed(context);
        this.pager = viewPagerFixed;
        viewPagerFixed.setAdapter(new PageAdapter());
        ViewPagerFixed.TabsView createTabsView = this.pager.createTabsView(true, 8);
        this.tabsView = createTabsView;
        createTabsView.setBackgroundColor(getThemedColor("actionBarActionModeDefault"));
        frameLayout.addView(this.tabsView, LayoutHelper.createFrame(-1, 48, 55));
        frameLayout.addView(this.pager, LayoutHelper.createFrame(-1, -1, 119, 0, 48, 0, 0));
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourcesProvider;
    }

    /* renamed from: org.telegram.ui.DataUsage2Activity$PageAdapter */
    /* loaded from: classes5.dex */
    private class PageAdapter extends ViewPagerFixed.Adapter {
        @Override // org.telegram.p048ui.Components.ViewPagerFixed.Adapter
        public int getItemCount() {
            return 4;
        }

        private PageAdapter() {
        }

        @Override // org.telegram.p048ui.Components.ViewPagerFixed.Adapter
        public View createView(int i) {
            DataUsage2Activity dataUsage2Activity = DataUsage2Activity.this;
            return new C5471ListView(dataUsage2Activity.getContext());
        }

        @Override // org.telegram.p048ui.Components.ViewPagerFixed.Adapter
        public void bindView(View view, int i, int i2) {
            C5471ListView c5471ListView = (C5471ListView) view;
            c5471ListView.setType(i);
            c5471ListView.scrollToPosition(0);
        }

        @Override // org.telegram.p048ui.Components.ViewPagerFixed.Adapter
        public String getItemTitle(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return i != 3 ? "" : LocaleController.getString("NetworkUsageRoamingTab", C3301R.string.NetworkUsageRoamingTab);
                    }
                    return LocaleController.getString("NetworkUsageWiFiTab", C3301R.string.NetworkUsageWiFiTab);
                }
                return LocaleController.getString("NetworkUsageMobileTab", C3301R.string.NetworkUsageMobileTab);
            }
            return LocaleController.getString("NetworkUsageAllTab", C3301R.string.NetworkUsageAllTab);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DataUsage2Activity$ListView */
    /* loaded from: classes5.dex */
    public class C5471ListView extends RecyclerListView {
        Adapter adapter;
        private boolean animateChart;
        private CacheChart chart;
        private Size[] chartSegments;
        private boolean[] collapsed;
        int currentType;
        private boolean empty;
        private ArrayList<ItemInner> itemInners;
        private ArrayList<ItemInner> oldItems;
        private ArrayList<Integer> removedSegments;
        private Size[] segments;
        private int[] tempPercents;
        private float[] tempSizes;
        private long totalSize;
        private long totalSizeIn;
        private long totalSizeOut;

        public C5471ListView(Context context) {
            super(context);
            this.animateChart = false;
            this.currentType = 0;
            this.oldItems = new ArrayList<>();
            this.itemInners = new ArrayList<>();
            this.tempSizes = new float[7];
            this.tempPercents = new int[7];
            this.removedSegments = new ArrayList<>();
            this.collapsed = new boolean[7];
            setLayoutManager(new LinearLayoutManager(context));
            Adapter adapter = new Adapter();
            this.adapter = adapter;
            setAdapter(adapter);
            setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.DataUsage2Activity$ListView$$ExternalSyntheticLambda2
                @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i) {
                    DataUsage2Activity.C5471ListView.this.lambda$new$1(view, i);
                }
            });
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
            defaultItemAnimator.setDurations(220L);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setSupportsChangeAnimations(false);
            setItemAnimator(defaultItemAnimator);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view, int i) {
            if ((view instanceof Cell) && i >= 0 && i < this.itemInners.size()) {
                ItemInner itemInner = this.itemInners.get(i);
                if (itemInner != null) {
                    int i2 = itemInner.index;
                    if (i2 >= 0) {
                        boolean[] zArr = this.collapsed;
                        zArr[i2] = !zArr[i2];
                        updateRows(true);
                    } else if (i2 == -2) {
                        DataUsage2Activity.this.presentFragment(new DataAutoDownloadActivity(this.currentType - 1));
                    }
                }
            } else if (view instanceof TextCell) {
                AlertDialog.Builder builder = new AlertDialog.Builder(DataUsage2Activity.this.getParentActivity());
                builder.setTitle(LocaleController.getString("ResetStatisticsAlertTitle", C3301R.string.ResetStatisticsAlertTitle));
                builder.setMessage(LocaleController.getString("ResetStatisticsAlert", C3301R.string.ResetStatisticsAlert));
                builder.setPositiveButton(LocaleController.getString("Reset", C3301R.string.Reset), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DataUsage2Activity$ListView$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        DataUsage2Activity.C5471ListView.this.lambda$new$0(dialogInterface, i3);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
                AlertDialog create = builder.create();
                DataUsage2Activity.this.showDialog(create);
                TextView textView = (TextView) create.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor("dialogTextRed"));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(DialogInterface dialogInterface, int i) {
            this.removedSegments.clear();
            int i2 = 0;
            while (true) {
                Size[] sizeArr = this.segments;
                if (i2 >= sizeArr.length) {
                    StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).resetStats(0);
                    StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).resetStats(1);
                    StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).resetStats(2);
                    this.animateChart = true;
                    setup();
                    updateRows(true);
                    return;
                }
                if (sizeArr[i2].size > 0) {
                    this.removedSegments.add(Integer.valueOf(sizeArr[i2].index));
                }
                i2++;
            }
        }

        public void setType(int i) {
            this.currentType = i;
            this.removedSegments.clear();
            this.empty = getBytesCount(6) <= 0;
            setup();
            updateRows(false);
        }

        private void setup() {
            this.totalSize = getBytesCount(6);
            this.totalSizeIn = getReceivedBytesCount(6);
            this.totalSizeOut = getSentBytesCount(6);
            if (this.segments == null) {
                this.segments = new Size[7];
            }
            if (this.chartSegments == null) {
                this.chartSegments = new Size[7];
            }
            for (int i = 0; i < DataUsage2Activity.stats.length; i++) {
                long bytesCount = getBytesCount(DataUsage2Activity.stats[i]);
                Size[] sizeArr = this.chartSegments;
                Size[] sizeArr2 = this.segments;
                Size size = new Size(this, i, bytesCount, getReceivedBytesCount(DataUsage2Activity.stats[i]), getSentBytesCount(DataUsage2Activity.stats[i]), getReceivedItemsCount(DataUsage2Activity.stats[i]), getSentItemsCount(DataUsage2Activity.stats[i]));
                sizeArr2[i] = size;
                sizeArr[i] = size;
                this.tempSizes[i] = ((float) bytesCount) / ((float) this.totalSize);
            }
            Arrays.sort(this.segments, DataUsage2Activity$ListView$$ExternalSyntheticLambda1.INSTANCE);
            AndroidUtilities.roundPercents(this.tempSizes, this.tempPercents);
            Arrays.fill(this.collapsed, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$setup$2(Size size, Size size2) {
            return Long.compare(size2.size, size.size);
        }

        private String formatPercent(int i) {
            return i <= 0 ? String.format("<%d%%", 1) : String.format("%d%%", Integer.valueOf(i));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.DataUsage2Activity$ListView$Size */
        /* loaded from: classes5.dex */
        public class Size extends CacheChart.SegmentSize {
            int inCount;
            long inSize;
            int index;
            int outCount;
            long outSize;

            public Size(C5471ListView c5471ListView, int i, long j, long j2, long j3, int i2, int i3) {
                this.index = i;
                this.size = j;
                this.selected = true;
                this.inSize = j2;
                this.inCount = i2;
                this.outSize = j3;
                this.outCount = i3;
            }
        }

        private void updateRows(boolean z) {
            String formatString;
            String string;
            this.oldItems.clear();
            this.oldItems.addAll(this.itemInners);
            this.itemInners.clear();
            this.itemInners.add(new ItemInner(0));
            long j = 0;
            if (this.totalSize > 0) {
                formatString = LocaleController.formatString("YourNetworkUsageSince", C3301R.string.YourNetworkUsageSince, LocaleController.getInstance().formatterStats.format(getResetStatsDate()));
            } else {
                formatString = LocaleController.formatString("NoNetworkUsageSince", C3301R.string.NoNetworkUsageSince, LocaleController.getInstance().formatterStats.format(getResetStatsDate()));
            }
            this.itemInners.add(ItemInner.asSubtitle(formatString));
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                Size[] sizeArr = this.segments;
                if (i >= sizeArr.length) {
                    break;
                }
                long j2 = sizeArr[i].size;
                int i2 = sizeArr[i].index;
                boolean z2 = this.empty || this.removedSegments.contains(Integer.valueOf(i2));
                int i3 = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                if (i3 > 0 || z2) {
                    SpannableString spannableString = new SpannableString(formatPercent(this.tempPercents[i2]));
                    spannableString.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, spannableString.length(), 33);
                    spannableString.setSpan(new RelativeSizeSpan(0.8f), 0, spannableString.length(), 33);
                    spannableString.setSpan(new CustomCharacterSpan(DataUsage2Activity.this, 0.1d), 0, spannableString.length(), 33);
                    arrayList.add(ItemInner.asCell(i, DataUsage2Activity.particles[i2], getThemedColor(DataUsage2Activity.colors[i2]), i3 == 0 ? LocaleController.getString(DataUsage2Activity.titles[i2]) : TextUtils.concat(LocaleController.getString(DataUsage2Activity.titles[i2]), "  ", spannableString), AndroidUtilities.formatFileSize(j2)));
                }
                i++;
                j = 0;
            }
            if (!arrayList.isEmpty()) {
                SpannableString spannableString2 = new SpannableString("^");
                Drawable mutate = getContext().getResources().getDrawable(C3301R.C3303drawable.msg_mini_upload).mutate();
                mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor("windowBackgroundWhiteBlackText"), PorterDuff.Mode.MULTIPLY));
                mutate.setBounds(0, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(18));
                spannableString2.setSpan(new ImageSpan(mutate, 2), 0, 1, 33);
                SpannableString spannableString3 = new SpannableString("v");
                Drawable mutate2 = getContext().getResources().getDrawable(C3301R.C3303drawable.msg_mini_download).mutate();
                mutate2.setColorFilter(new PorterDuffColorFilter(getThemedColor("windowBackgroundWhiteBlackText"), PorterDuff.Mode.MULTIPLY));
                mutate2.setBounds(0, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(18));
                spannableString3.setSpan(new ImageSpan(mutate2, 2), 0, 1, 33);
                int i4 = 0;
                while (i4 < arrayList.size()) {
                    int i5 = ((ItemInner) arrayList.get(i4)).index;
                    if (i5 >= 0 && !this.collapsed[i5]) {
                        Size size = this.segments[i5];
                        if (DataUsage2Activity.stats[size.index] != 0) {
                            if (DataUsage2Activity.stats[size.index] != 1) {
                                if (size.outSize > 0 || size.outCount > 0) {
                                    i4++;
                                    arrayList.add(i4, ItemInner.asCell(-1, 0, 0, TextUtils.concat(spannableString2, " ", AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("FilesSentCount", size.outCount))), AndroidUtilities.formatFileSize(size.outSize)));
                                }
                                if (size.inSize > 0 || size.inCount > 0) {
                                    i4++;
                                    arrayList.add(i4, ItemInner.asCell(-1, 0, 0, TextUtils.concat(spannableString3, " ", AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("FilesReceivedCount", size.inCount))), AndroidUtilities.formatFileSize(size.inSize)));
                                }
                            } else {
                                if (size.outSize > 0 || size.outCount > 0) {
                                    i4++;
                                    arrayList.add(i4, ItemInner.asCell(-1, 0, 0, TextUtils.concat(spannableString2, " ", LocaleController.getString("BytesSent", C3301R.string.BytesSent)), AndroidUtilities.formatFileSize(size.outSize)));
                                }
                                if (size.inSize > 0 || size.inCount > 0) {
                                    i4++;
                                    arrayList.add(i4, ItemInner.asCell(-1, 0, 0, TextUtils.concat(spannableString3, " ", LocaleController.getString("BytesReceived", C3301R.string.BytesReceived)), AndroidUtilities.formatFileSize(size.inSize)));
                                }
                                i4++;
                            }
                        } else {
                            if (size.outSize > 0 || size.outCount > 0) {
                                i4++;
                                arrayList.add(i4, ItemInner.asCell(-1, 0, 0, LocaleController.formatPluralStringComma("OutgoingCallsCount", size.outCount), AndroidUtilities.formatFileSize(size.outSize)));
                            }
                            if (size.inSize > 0 || size.inCount > 0) {
                                i4++;
                                arrayList.add(i4, ItemInner.asCell(-1, 0, 0, LocaleController.formatPluralStringComma("IncomingCallsCount", size.inCount), AndroidUtilities.formatFileSize(size.inSize)));
                            }
                        }
                    }
                    i4++;
                }
                this.itemInners.addAll(arrayList);
                if (!this.empty) {
                    this.itemInners.add(ItemInner.asSeparator(LocaleController.getString("DataUsageSectionsInfo", C3301R.string.DataUsageSectionsInfo)));
                }
            }
            if (!this.empty) {
                this.itemInners.add(ItemInner.asHeader(LocaleController.getString("TotalNetworkUsage", C3301R.string.TotalNetworkUsage)));
                this.itemInners.add(ItemInner.asCell(-1, C3301R.C3303drawable.msg_filled_data_sent, getThemedColor("statisticChartLine_lightblue"), LocaleController.getString("BytesSent", C3301R.string.BytesSent), AndroidUtilities.formatFileSize(this.totalSizeOut)));
                this.itemInners.add(ItemInner.asCell(-1, C3301R.C3303drawable.msg_filled_data_received, getThemedColor("statisticChartLine_green"), LocaleController.getString("BytesReceived", C3301R.string.BytesReceived), AndroidUtilities.formatFileSize(this.totalSizeIn)));
            }
            if (!arrayList.isEmpty()) {
                this.itemInners.add(ItemInner.asSeparator(formatString));
            }
            if (this.currentType != 0) {
                if (arrayList.isEmpty()) {
                    this.itemInners.add(ItemInner.asSeparator());
                }
                this.itemInners.add(ItemInner.asCell(-2, C3301R.C3303drawable.msg_download_settings, getThemedColor("statisticChartLine_lightblue"), LocaleController.getString("AutomaticDownloadSettings", C3301R.string.AutomaticDownloadSettings), null));
                int i6 = this.currentType;
                if (i6 == 1) {
                    string = LocaleController.getString("AutomaticDownloadSettingsInfoMobile", C3301R.string.AutomaticDownloadSettingsInfoMobile);
                } else if (i6 == 3) {
                    string = LocaleController.getString("AutomaticDownloadSettingsInfoRoaming", C3301R.string.AutomaticDownloadSettingsInfoRoaming);
                } else {
                    string = LocaleController.getString("AutomaticDownloadSettingsInfoWiFi", C3301R.string.AutomaticDownloadSettingsInfoWiFi);
                }
                this.itemInners.add(ItemInner.asSeparator(string));
            }
            if (!arrayList.isEmpty()) {
                this.itemInners.add(new ItemInner(5, LocaleController.getString("ResetStatistics", C3301R.string.ResetStatistics)));
            }
            this.itemInners.add(ItemInner.asSeparator());
            Adapter adapter = this.adapter;
            if (adapter != null) {
                if (z) {
                    adapter.setItems(this.oldItems, this.itemInners);
                } else {
                    adapter.notifyDataSetChanged();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.DataUsage2Activity$ListView$Adapter */
        /* loaded from: classes5.dex */
        public class Adapter extends AdapterWithDiffUtils {
            private Adapter() {
            }

            /* renamed from: org.telegram.ui.DataUsage2Activity$ListView$Adapter$1 */
            /* loaded from: classes5.dex */
            class C54721 extends CacheChart {
                /* JADX INFO: Access modifiers changed from: private */
                public static /* synthetic */ int lambda$onSectionDown$0(int i) {
                    return i;
                }

                @Override // org.telegram.p048ui.Components.CacheChart
                protected int heightDp() {
                    return 216;
                }

                @Override // org.telegram.p048ui.Components.CacheChart
                protected int padInsideDp() {
                    return 10;
                }

                C54721(Context context, int i, String[] strArr, int i2, int[] iArr) {
                    super(context, i, strArr, i2, iArr);
                }

                @Override // org.telegram.p048ui.Components.CacheChart
                protected void onSectionDown(int i, boolean z) {
                    final int i2;
                    if (z) {
                        if (i < 0 || i >= C5471ListView.this.segments.length) {
                            return;
                        }
                        int i3 = 0;
                        while (true) {
                            i2 = -1;
                            if (i3 >= C5471ListView.this.segments.length) {
                                i3 = -1;
                                break;
                            } else if (C5471ListView.this.segments[i3].index == i) {
                                break;
                            } else {
                                i3++;
                            }
                        }
                        int i4 = 0;
                        while (true) {
                            if (i4 < C5471ListView.this.itemInners.size()) {
                                ItemInner itemInner = (ItemInner) C5471ListView.this.itemInners.get(i4);
                                if (itemInner != null && itemInner.viewType == 2 && itemInner.index == i3) {
                                    i2 = i4;
                                    break;
                                }
                                i4++;
                            } else {
                                break;
                            }
                        }
                        if (i2 >= 0) {
                            C5471ListView.this.highlightRow(new RecyclerListView.IntReturnCallback() { // from class: org.telegram.ui.DataUsage2Activity$ListView$Adapter$1$$ExternalSyntheticLambda0
                                @Override // org.telegram.p048ui.Components.RecyclerListView.IntReturnCallback
                                public final int run() {
                                    int lambda$onSectionDown$0;
                                    lambda$onSectionDown$0 = DataUsage2Activity.C5471ListView.Adapter.C54721.lambda$onSectionDown$0(i2);
                                    return lambda$onSectionDown$0;
                                }
                            }, 0);
                            return;
                        } else {
                            C5471ListView.this.removeHighlightRow();
                            return;
                        }
                    }
                    C5471ListView.this.removeHighlightRow();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                TextCell textCell;
                if (i == 0) {
                    C5471ListView.this.chart = new C54721(C5471ListView.this.getContext(), DataUsage2Activity.colors.length, DataUsage2Activity.colors, 1, DataUsage2Activity.particles);
                    C5471ListView.this.chart.setInterceptTouch(false);
                    textCell = C5471ListView.this.chart;
                } else if (i == 1) {
                    C5471ListView c5471ListView = C5471ListView.this;
                    textCell = new SubtitleCell(DataUsage2Activity.this, c5471ListView.getContext());
                } else if (i == 3) {
                    textCell = new TextInfoPrivacyCell(C5471ListView.this.getContext());
                } else if (i == 4) {
                    View headerCell = new HeaderCell(C5471ListView.this.getContext());
                    headerCell.setBackgroundColor(C5471ListView.this.getThemedColor("windowBackgroundWhite"));
                    textCell = headerCell;
                } else if (i == 5) {
                    TextCell textCell2 = new TextCell(C5471ListView.this.getContext());
                    textCell2.setTextColor(C5471ListView.this.getThemedColor("windowBackgroundWhiteRedText5"));
                    textCell2.setBackgroundColor(C5471ListView.this.getThemedColor("windowBackgroundWhite"));
                    textCell = textCell2;
                } else if (i == 6) {
                    textCell = new RoundingCell(C5471ListView.this.getContext());
                } else if (i == 7) {
                    textCell = new View(C5471ListView.this.getContext()) { // from class: org.telegram.ui.DataUsage2Activity.ListView.Adapter.2
                        {
                            setBackgroundColor(C5471ListView.this.getThemedColor("windowBackgroundWhite"));
                        }

                        @Override // android.view.View
                        protected void onMeasure(int i2, int i3) {
                            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(4), 1073741824));
                        }
                    };
                } else {
                    C5471ListView c5471ListView2 = C5471ListView.this;
                    textCell = new Cell(DataUsage2Activity.this, c5471ListView2.getContext());
                }
                return new RecyclerListView.Holder(textCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                int i2;
                int i3;
                ItemInner itemInner = (ItemInner) C5471ListView.this.itemInners.get(viewHolder.getAdapterPosition());
                int itemViewType = viewHolder.getItemViewType();
                boolean z = false;
                if (itemViewType == 0) {
                    CacheChart cacheChart = (CacheChart) viewHolder.itemView;
                    if (C5471ListView.this.segments != null) {
                        cacheChart.setSegments(C5471ListView.this.totalSize, C5471ListView.this.animateChart, C5471ListView.this.chartSegments);
                    }
                    C5471ListView.this.animateChart = false;
                    return;
                }
                Boolean bool = null;
                if (itemViewType == 1) {
                    SubtitleCell subtitleCell = (SubtitleCell) viewHolder.itemView;
                    subtitleCell.setText(itemInner.text);
                    int i4 = i + 1;
                    if (i4 < C5471ListView.this.itemInners.size() && (i3 = ((ItemInner) C5471ListView.this.itemInners.get(i4)).viewType) != itemInner.viewType && i3 != 3 && i3 != 6) {
                        z = true;
                    }
                    if (z) {
                        subtitleCell.setBackground(Theme.getThemedDrawable(C5471ListView.this.getContext(), C3301R.C3303drawable.greydivider_top, "windowBackgroundGrayShadow"));
                    } else {
                        subtitleCell.setBackground(null);
                    }
                } else if (itemViewType == 2) {
                    Cell cell = (Cell) viewHolder.itemView;
                    int i5 = i + 1;
                    cell.set(itemInner.imageColor, itemInner.imageResId, itemInner.text, itemInner.valueText, i5 < getItemCount() && ((ItemInner) C5471ListView.this.itemInners.get(i5)).viewType == itemViewType);
                    if (!itemInner.pad && (i2 = itemInner.index) >= 0 && (i2 >= C5471ListView.this.segments.length || C5471ListView.this.segments[itemInner.index].size > 0)) {
                        bool = Boolean.valueOf(C5471ListView.this.collapsed[itemInner.index]);
                    }
                    cell.setArrow(bool);
                } else if (itemViewType != 3) {
                    if (itemViewType == 4) {
                        ((HeaderCell) viewHolder.itemView).setText(itemInner.text);
                    } else if (itemViewType == 5) {
                        ((TextCell) viewHolder.itemView).setText(itemInner.text.toString(), false);
                    } else if (itemViewType == 6) {
                        ((RoundingCell) viewHolder.itemView).setTop(true);
                    }
                } else {
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    boolean z2 = i > 0 && itemInner.viewType != ((ItemInner) C5471ListView.this.itemInners.get(i + (-1))).viewType;
                    int i6 = i + 1;
                    if (i6 < C5471ListView.this.itemInners.size() && ((ItemInner) C5471ListView.this.itemInners.get(i6)).viewType != itemInner.viewType) {
                        z = true;
                    }
                    if (z2 && z) {
                        textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(C5471ListView.this.getContext(), C3301R.C3303drawable.greydivider, "windowBackgroundGrayShadow"));
                    } else if (z2) {
                        textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(C5471ListView.this.getContext(), C3301R.C3303drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                    } else if (z) {
                        textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(C5471ListView.this.getContext(), C3301R.C3303drawable.greydivider_top, "windowBackgroundGrayShadow"));
                    } else {
                        textInfoPrivacyCell.setBackground(null);
                    }
                    textInfoPrivacyCell.setText(itemInner.text);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return C5471ListView.this.itemInners.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return ((ItemInner) C5471ListView.this.itemInners.get(i)).viewType;
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                ItemInner itemInner = (ItemInner) C5471ListView.this.itemInners.get(viewHolder.getAdapterPosition());
                int i = itemInner.viewType;
                return i == 5 || (i == 2 && itemInner.index != -1);
            }
        }

        private int getSentItemsCount(int i) {
            int i2 = this.currentType;
            return (i2 == 1 || i2 == 2 || i2 == 3) ? StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getSentItemsCount(this.currentType - 1, i) : StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getSentItemsCount(0, i) + StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getSentItemsCount(1, i) + StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getSentItemsCount(2, i);
        }

        private int getReceivedItemsCount(int i) {
            int i2 = this.currentType;
            return (i2 == 1 || i2 == 2 || i2 == 3) ? StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getRecivedItemsCount(this.currentType - 1, i) : StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getRecivedItemsCount(0, i) + StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getRecivedItemsCount(1, i) + StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getRecivedItemsCount(2, i);
        }

        private long getBytesCount(int i) {
            return getSentBytesCount(i) + getReceivedBytesCount(i);
        }

        private long getSentBytesCount(int i) {
            int i2 = this.currentType;
            return (i2 == 1 || i2 == 2 || i2 == 3) ? StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getSentBytesCount(this.currentType - 1, i) : StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getSentBytesCount(0, i) + StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getSentBytesCount(1, i) + StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getSentBytesCount(2, i);
        }

        private long getReceivedBytesCount(int i) {
            int i2 = this.currentType;
            return (i2 == 1 || i2 == 2 || i2 == 3) ? StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getReceivedBytesCount(this.currentType - 1, i) : StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getReceivedBytesCount(0, i) + StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getReceivedBytesCount(1, i) + StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getReceivedBytesCount(2, i);
        }

        private long getResetStatsDate() {
            int i = this.currentType;
            if (i == 1 || i == 2 || i == 3) {
                return StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getResetStatsDate(this.currentType - 1);
            }
            return min(StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getResetStatsDate(0), StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getResetStatsDate(1), StatsController.getInstance(((BaseFragment) DataUsage2Activity.this).currentAccount).getResetStatsDate(2));
        }

        private long min(long... jArr) {
            long j = Long.MAX_VALUE;
            for (int i = 0; i < jArr.length; i++) {
                if (j > jArr[i]) {
                    j = jArr[i];
                }
            }
            return j;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.DataUsage2Activity$ItemInner */
    /* loaded from: classes5.dex */
    public static class ItemInner extends AdapterWithDiffUtils.Item {
        public int imageColor;
        public int imageResId;
        public int index;
        public int key;
        public boolean pad;
        public CharSequence text;
        public CharSequence valueText;

        public ItemInner(int i) {
            super(i, false);
        }

        private ItemInner(int i, CharSequence charSequence) {
            super(i, false);
            this.text = charSequence;
        }

        private ItemInner(int i, int i2, int i3, int i4, CharSequence charSequence, CharSequence charSequence2) {
            super(i, false);
            this.index = i2;
            this.imageResId = i3;
            this.imageColor = i4;
            this.text = charSequence;
            this.valueText = charSequence2;
        }

        public static ItemInner asSeparator() {
            return new ItemInner(3);
        }

        public static ItemInner asSeparator(String str) {
            return new ItemInner(3, str);
        }

        public static ItemInner asHeader(String str) {
            return new ItemInner(4, str);
        }

        public static ItemInner asSubtitle(String str) {
            return new ItemInner(1, str);
        }

        public static ItemInner asCell(int i, int i2, int i3, CharSequence charSequence, CharSequence charSequence2) {
            return new ItemInner(2, i, i2, i3, charSequence, charSequence2);
        }

        public boolean equals(Object obj) {
            if (obj instanceof ItemInner) {
                ItemInner itemInner = (ItemInner) obj;
                int i = itemInner.viewType;
                int i2 = this.viewType;
                if (i != i2) {
                    return false;
                }
                if (i2 == 1 || i2 == 4 || i2 == 3 || i2 == 5) {
                    return TextUtils.equals(this.text, itemInner.text);
                }
                return i2 == 2 ? itemInner.index == this.index && TextUtils.equals(this.text, itemInner.text) && itemInner.imageColor == this.imageColor && itemInner.imageResId == this.imageResId : itemInner.key == this.key;
            }
            return false;
        }
    }

    /* renamed from: org.telegram.ui.DataUsage2Activity$SubtitleCell */
    /* loaded from: classes5.dex */
    class SubtitleCell extends FrameLayout {
        TextView textView;

        public SubtitleCell(DataUsage2Activity dataUsage2Activity, Context context) {
            super(context);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setGravity(17);
            this.textView.setTextSize(1, 13.0f);
            this.textView.setTextColor(dataUsage2Activity.getThemedColor("windowBackgroundWhiteGrayText"));
            addView(this.textView, LayoutHelper.createFrame(-1, -2, 119, 24, 0, 24, 14));
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
        }
    }

    /* renamed from: org.telegram.ui.DataUsage2Activity$RoundingCell */
    /* loaded from: classes5.dex */
    public static class RoundingCell extends View {
        Paint paint;
        Path path;
        private boolean top;

        public RoundingCell(Context context) {
            super(context);
            this.path = new Path();
            Paint paint = new Paint(1);
            this.paint = paint;
            this.top = true;
            paint.setShadowLayer(AndroidUtilities.m50dp(1), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m51dp(-0.66f), AndroidUtilities.LIGHT_STATUS_BAR_OVERLAY);
            this.paint.setColor(Theme.getColor("windowBackgroundWhite"));
        }

        public void setTop(boolean z) {
            this.path.rewind();
            this.top = z;
            if (z) {
                float m50dp = AndroidUtilities.m50dp(14);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(4), getMeasuredWidth(), AndroidUtilities.m50dp(4) + (getMeasuredHeight() * 2));
                this.path.addRoundRect(rectF, m50dp, m50dp, Path.Direction.CW);
                return;
            }
            float m50dp2 = AndroidUtilities.m50dp(8);
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(BitmapDescriptorFactory.HUE_RED, ((-getMeasuredHeight()) * 2) - AndroidUtilities.m50dp(4), getMeasuredWidth(), getMeasuredHeight() - AndroidUtilities.m50dp(4));
            this.path.addRoundRect(rectF2, m50dp2, m50dp2, Path.Direction.CW);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawPath(this.path, this.paint);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(13), 1073741824));
            setTop(this.top);
        }

        @Override // android.view.View
        protected void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DataUsage2Activity$Cell */
    /* loaded from: classes5.dex */
    public class Cell extends FrameLayout {
        ImageView arrowView;
        boolean divider;
        ImageView imageView;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        TextView textView;
        TextView valueTextView;

        public Cell(DataUsage2Activity dataUsage2Activity, Context context) {
            super(context);
            setBackgroundColor(dataUsage2Activity.getThemedColor("windowBackgroundWhite"));
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView, LayoutHelper.createFrame(28, 28, (LocaleController.isRTL ? 5 : 3) | 16, 18, 0, 18, 0));
            LinearLayout linearLayout = new LinearLayout(context);
            this.linearLayout = linearLayout;
            linearLayout.setOrientation(0);
            this.linearLayout.setWeightSum(2.0f);
            addView(this.linearLayout, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, (LocaleController.isRTL ? 5 : 3) | 16, 64.0f, BitmapDescriptorFactory.HUE_RED, 20.0f, BitmapDescriptorFactory.HUE_RED));
            LinearLayout linearLayout2 = new LinearLayout(context);
            this.linearLayout2 = linearLayout2;
            linearLayout2.setOrientation(0);
            if (LocaleController.isRTL) {
                this.linearLayout2.setGravity(5);
            }
            this.linearLayout2.setWeightSum(2.0f);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 16.0f);
            this.textView.setTextColor(dataUsage2Activity.getThemedColor("windowBackgroundWhiteBlackText"));
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setSingleLine();
            this.textView.setLines(1);
            ImageView imageView2 = new ImageView(context);
            this.arrowView = imageView2;
            imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.arrowView.setImageResource(C3301R.C3303drawable.arrow_more);
            this.arrowView.setColorFilter(new PorterDuffColorFilter(dataUsage2Activity.getThemedColor("windowBackgroundWhiteBlackText"), PorterDuff.Mode.MULTIPLY));
            this.arrowView.setTranslationY(AndroidUtilities.m50dp(1));
            this.arrowView.setVisibility(8);
            if (LocaleController.isRTL) {
                this.linearLayout2.addView(this.arrowView, LayoutHelper.createLinear(16, 16, 21, 3, 0, 0, 0));
                this.linearLayout2.addView(this.textView, LayoutHelper.createLinear(-2, -2, 21));
            } else {
                this.linearLayout2.addView(this.textView, LayoutHelper.createLinear(-2, -2, 16));
                this.linearLayout2.addView(this.arrowView, LayoutHelper.createLinear(16, 16, 16, 3, 0, 0, 0));
            }
            TextView textView2 = new TextView(context);
            this.valueTextView = textView2;
            textView2.setTextSize(1, 16.0f);
            this.valueTextView.setTextColor(dataUsage2Activity.getThemedColor("windowBackgroundWhiteBlueText2"));
            this.valueTextView.setGravity(LocaleController.isRTL ? 3 : 5);
            if (LocaleController.isRTL) {
                this.linearLayout.addView(this.valueTextView, LayoutHelper.createLinear(-2, -2, 19));
                this.linearLayout.addView(this.linearLayout2, LayoutHelper.createLinear(0, -2, 2.0f, 21));
                return;
            }
            this.linearLayout.addView(this.linearLayout2, LayoutHelper.createLinear(0, -2, 2.0f, 16));
            this.linearLayout.addView(this.valueTextView, LayoutHelper.createLinear(-2, -2, 21));
        }

        public void set(int i, int i2, CharSequence charSequence, CharSequence charSequence2, boolean z) {
            if (i2 == 0) {
                this.imageView.setVisibility(8);
            } else {
                this.imageView.setVisibility(0);
                this.imageView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m50dp(9), i));
                this.imageView.setImageResource(i2);
            }
            this.textView.setText(charSequence);
            this.valueTextView.setText(charSequence2);
            this.divider = z;
            setWillNotDraw(!z);
        }

        public void setArrow(Boolean bool) {
            if (bool == null) {
                this.arrowView.setVisibility(8);
                return;
            }
            this.arrowView.setVisibility(0);
            this.arrowView.animate().rotation(bool.booleanValue() ? BitmapDescriptorFactory.HUE_RED : 180.0f).setDuration(360L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.divider) {
                canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(64), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m50dp(64) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(48), 1073741824));
        }
    }

    /* renamed from: org.telegram.ui.DataUsage2Activity$CustomCharacterSpan */
    /* loaded from: classes5.dex */
    public class CustomCharacterSpan extends MetricAffectingSpan {
        double ratio;

        public CustomCharacterSpan(DataUsage2Activity dataUsage2Activity, double d) {
            this.ratio = 0.5d;
            this.ratio = d;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.baselineShift += (int) (textPaint.ascent() * this.ratio);
        }

        @Override // android.text.style.MetricAffectingSpan
        public void updateMeasureState(TextPaint textPaint) {
            textPaint.baselineShift += (int) (textPaint.ascent() * this.ratio);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        if (f > 0.5f && !this.changeStatusBar) {
            this.changeStatusBar = true;
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, new Object[0]);
        }
        super.onTransitionAnimationProgress(z, f);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        if (this.changeStatusBar) {
            return AndroidUtilities.computePerceivedBrightness(Theme.getColor("actionBarActionModeDefault")) > 0.721f;
        }
        return super.isLightStatusBar();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return motionEvent.getY() <= ((float) (C3366ActionBar.getCurrentActionBarHeight() + AndroidUtilities.m50dp(48))) || this.pager.getCurrentPosition() == 0;
    }
}
