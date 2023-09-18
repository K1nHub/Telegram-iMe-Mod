package com.iMe.model.common;

import com.google.gson.Gson;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* compiled from: TelegramStatisticsChartData.kt */
/* loaded from: classes4.dex */
public final class TelegramStatisticsChartData {
    public static final Companion Companion = new Companion(null);
    private final Colors colors;
    private final List<List<Object>> columns;
    private final List<Object> hidden;
    private final Names names;
    private final int strokeWidth;
    private final Subchart subchart;
    private final String title;
    private final Types types;
    private final String xRangeFormatter;
    private final String xTickFormatter;
    private final String xTooltipFormatter;
    private final String yTickFormatter;
    private final String yTooltipFormatter;

    private final Colors component1() {
        return this.colors;
    }

    private final String component10() {
        return this.xTickFormatter;
    }

    private final String component11() {
        return this.xTooltipFormatter;
    }

    private final String component12() {
        return this.yTickFormatter;
    }

    private final String component13() {
        return this.yTooltipFormatter;
    }

    private final List<List<Object>> component2() {
        return this.columns;
    }

    private final List<Object> component3() {
        return this.hidden;
    }

    private final Names component4() {
        return this.names;
    }

    private final int component5() {
        return this.strokeWidth;
    }

    private final Subchart component6() {
        return this.subchart;
    }

    private final String component7() {
        return this.title;
    }

    private final Types component8() {
        return this.types;
    }

    private final String component9() {
        return this.xRangeFormatter;
    }

    public final TelegramStatisticsChartData copy(Colors colors, List<? extends List<? extends Object>> columns, List<? extends Object> hidden, Names names, int i, Subchart subchart, String title, Types types, String xRangeFormatter, String xTickFormatter, String str, String str2, String yTooltipFormatter) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(columns, "columns");
        Intrinsics.checkNotNullParameter(hidden, "hidden");
        Intrinsics.checkNotNullParameter(names, "names");
        Intrinsics.checkNotNullParameter(subchart, "subchart");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(types, "types");
        Intrinsics.checkNotNullParameter(xRangeFormatter, "xRangeFormatter");
        Intrinsics.checkNotNullParameter(xTickFormatter, "xTickFormatter");
        Intrinsics.checkNotNullParameter(yTooltipFormatter, "yTooltipFormatter");
        return new TelegramStatisticsChartData(colors, columns, hidden, names, i, subchart, title, types, xRangeFormatter, xTickFormatter, str, str2, yTooltipFormatter);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TelegramStatisticsChartData) {
            TelegramStatisticsChartData telegramStatisticsChartData = (TelegramStatisticsChartData) obj;
            return Intrinsics.areEqual(this.colors, telegramStatisticsChartData.colors) && Intrinsics.areEqual(this.columns, telegramStatisticsChartData.columns) && Intrinsics.areEqual(this.hidden, telegramStatisticsChartData.hidden) && Intrinsics.areEqual(this.names, telegramStatisticsChartData.names) && this.strokeWidth == telegramStatisticsChartData.strokeWidth && Intrinsics.areEqual(this.subchart, telegramStatisticsChartData.subchart) && Intrinsics.areEqual(this.title, telegramStatisticsChartData.title) && Intrinsics.areEqual(this.types, telegramStatisticsChartData.types) && Intrinsics.areEqual(this.xRangeFormatter, telegramStatisticsChartData.xRangeFormatter) && Intrinsics.areEqual(this.xTickFormatter, telegramStatisticsChartData.xTickFormatter) && Intrinsics.areEqual(this.xTooltipFormatter, telegramStatisticsChartData.xTooltipFormatter) && Intrinsics.areEqual(this.yTickFormatter, telegramStatisticsChartData.yTickFormatter) && Intrinsics.areEqual(this.yTooltipFormatter, telegramStatisticsChartData.yTooltipFormatter);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((((this.colors.hashCode() * 31) + this.columns.hashCode()) * 31) + this.hidden.hashCode()) * 31) + this.names.hashCode()) * 31) + this.strokeWidth) * 31) + this.subchart.hashCode()) * 31) + this.title.hashCode()) * 31) + this.types.hashCode()) * 31) + this.xRangeFormatter.hashCode()) * 31) + this.xTickFormatter.hashCode()) * 31;
        String str = this.xTooltipFormatter;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.yTickFormatter;
        return ((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.yTooltipFormatter.hashCode();
    }

    public String toString() {
        return "TelegramStatisticsChartData(colors=" + this.colors + ", columns=" + this.columns + ", hidden=" + this.hidden + ", names=" + this.names + ", strokeWidth=" + this.strokeWidth + ", subchart=" + this.subchart + ", title=" + this.title + ", types=" + this.types + ", xRangeFormatter=" + this.xRangeFormatter + ", xTickFormatter=" + this.xTickFormatter + ", xTooltipFormatter=" + this.xTooltipFormatter + ", yTickFormatter=" + this.yTickFormatter + ", yTooltipFormatter=" + this.yTooltipFormatter + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TelegramStatisticsChartData(Colors colors, List<? extends List<? extends Object>> columns, List<? extends Object> hidden, Names names, int i, Subchart subchart, String title, Types types, String xRangeFormatter, String xTickFormatter, String str, String str2, String yTooltipFormatter) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(columns, "columns");
        Intrinsics.checkNotNullParameter(hidden, "hidden");
        Intrinsics.checkNotNullParameter(names, "names");
        Intrinsics.checkNotNullParameter(subchart, "subchart");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(types, "types");
        Intrinsics.checkNotNullParameter(xRangeFormatter, "xRangeFormatter");
        Intrinsics.checkNotNullParameter(xTickFormatter, "xTickFormatter");
        Intrinsics.checkNotNullParameter(yTooltipFormatter, "yTooltipFormatter");
        this.colors = colors;
        this.columns = columns;
        this.hidden = hidden;
        this.names = names;
        this.strokeWidth = i;
        this.subchart = subchart;
        this.title = title;
        this.types = types;
        this.xRangeFormatter = xRangeFormatter;
        this.xTickFormatter = xTickFormatter;
        this.xTooltipFormatter = str;
        this.yTickFormatter = str2;
        this.yTooltipFormatter = yTooltipFormatter;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ TelegramStatisticsChartData(com.iMe.model.common.TelegramStatisticsChartData.Colors r18, java.util.List r19, java.util.List r20, com.iMe.model.common.TelegramStatisticsChartData.Names r21, int r22, com.iMe.model.common.TelegramStatisticsChartData.Subchart r23, java.lang.String r24, com.iMe.model.common.TelegramStatisticsChartData.Types r25, java.lang.String r26, java.lang.String r27, java.lang.String r28, java.lang.String r29, java.lang.String r30, int r31, kotlin.jvm.internal.DefaultConstructorMarker r32) {
        /*
            r17 = this;
            r0 = r31
            r1 = r0 & 1
            if (r1 == 0) goto Lf
            com.iMe.model.common.TelegramStatisticsChartData$Colors r1 = new com.iMe.model.common.TelegramStatisticsChartData$Colors
            java.lang.String r2 = "BLUE#007AFF"
            r1.<init>(r2)
            r4 = r1
            goto L11
        Lf:
            r4 = r18
        L11:
            r1 = r0 & 4
            if (r1 == 0) goto L1b
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
            r6 = r1
            goto L1d
        L1b:
            r6 = r20
        L1d:
            r1 = r0 & 16
            if (r1 == 0) goto L24
            r1 = 2
            r8 = r1
            goto L26
        L24:
            r8 = r22
        L26:
            r1 = r0 & 64
            if (r1 == 0) goto L2e
            java.lang.String r1 = ""
            r10 = r1
            goto L30
        L2e:
            r10 = r24
        L30:
            r1 = r0 & 128(0x80, float:1.794E-43)
            if (r1 == 0) goto L3f
            com.iMe.model.common.TelegramStatisticsChartData$Types r1 = new com.iMe.model.common.TelegramStatisticsChartData$Types
            java.lang.String r2 = "x"
            java.lang.String r3 = "line"
            r1.<init>(r2, r3)
            r11 = r1
            goto L41
        L3f:
            r11 = r25
        L41:
            r1 = r0 & 256(0x100, float:3.59E-43)
            if (r1 == 0) goto L49
            java.lang.String r1 = "statsFormat('day')"
            r12 = r1
            goto L4b
        L49:
            r12 = r26
        L4b:
            r1 = r0 & 512(0x200, float:7.175E-43)
            if (r1 == 0) goto L53
            java.lang.String r1 = "statsTooltipFormat('day')"
            r13 = r1
            goto L55
        L53:
            r13 = r27
        L55:
            r1 = r0 & 1024(0x400, float:1.435E-42)
            r2 = 0
            if (r1 == 0) goto L5c
            r14 = r2
            goto L5e
        L5c:
            r14 = r28
        L5e:
            r1 = r0 & 2048(0x800, float:2.87E-42)
            if (r1 == 0) goto L64
            r15 = r2
            goto L66
        L64:
            r15 = r29
        L66:
            r0 = r0 & 4096(0x1000, float:5.74E-42)
            if (r0 == 0) goto L6f
            java.lang.String r0 = "statsFormatTooltipValue"
            r16 = r0
            goto L71
        L6f:
            r16 = r30
        L71:
            r3 = r17
            r5 = r19
            r7 = r21
            r9 = r23
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.model.common.TelegramStatisticsChartData.<init>(com.iMe.model.common.TelegramStatisticsChartData$Colors, java.util.List, java.util.List, com.iMe.model.common.TelegramStatisticsChartData$Names, int, com.iMe.model.common.TelegramStatisticsChartData$Subchart, java.lang.String, com.iMe.model.common.TelegramStatisticsChartData$Types, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* compiled from: TelegramStatisticsChartData.kt */
    /* loaded from: classes4.dex */
    public static final class Colors {

        /* renamed from: y0 */
        private final String f353y0;

        public static /* synthetic */ Colors copy$default(Colors colors, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = colors.f353y0;
            }
            return colors.copy(str);
        }

        public final String component1() {
            return this.f353y0;
        }

        public final Colors copy(String y0) {
            Intrinsics.checkNotNullParameter(y0, "y0");
            return new Colors(y0);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Colors) && Intrinsics.areEqual(this.f353y0, ((Colors) obj).f353y0);
        }

        public int hashCode() {
            return this.f353y0.hashCode();
        }

        public String toString() {
            return "Colors(y0=" + this.f353y0 + ')';
        }

        public Colors(String y0) {
            Intrinsics.checkNotNullParameter(y0, "y0");
            this.f353y0 = y0;
        }

        public final String getY0() {
            return this.f353y0;
        }
    }

    /* compiled from: TelegramStatisticsChartData.kt */
    /* loaded from: classes4.dex */
    public static final class Names {

        /* renamed from: y0 */
        private final String f354y0;

        public static /* synthetic */ Names copy$default(Names names, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = names.f354y0;
            }
            return names.copy(str);
        }

        public final String component1() {
            return this.f354y0;
        }

        public final Names copy(String y0) {
            Intrinsics.checkNotNullParameter(y0, "y0");
            return new Names(y0);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Names) && Intrinsics.areEqual(this.f354y0, ((Names) obj).f354y0);
        }

        public int hashCode() {
            return this.f354y0.hashCode();
        }

        public String toString() {
            return "Names(y0=" + this.f354y0 + ')';
        }

        public Names(String y0) {
            Intrinsics.checkNotNullParameter(y0, "y0");
            this.f354y0 = y0;
        }

        public final String getY0() {
            return this.f354y0;
        }
    }

    /* compiled from: TelegramStatisticsChartData.kt */
    /* loaded from: classes4.dex */
    public static final class Subchart {
        private final List<Long> defaultZoom;
        private final boolean show;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Subchart copy$default(Subchart subchart, List list, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                list = subchart.defaultZoom;
            }
            if ((i & 2) != 0) {
                z = subchart.show;
            }
            return subchart.copy(list, z);
        }

        public final List<Long> component1() {
            return this.defaultZoom;
        }

        public final boolean component2() {
            return this.show;
        }

        public final Subchart copy(List<Long> defaultZoom, boolean z) {
            Intrinsics.checkNotNullParameter(defaultZoom, "defaultZoom");
            return new Subchart(defaultZoom, z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Subchart) {
                Subchart subchart = (Subchart) obj;
                return Intrinsics.areEqual(this.defaultZoom, subchart.defaultZoom) && this.show == subchart.show;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = this.defaultZoom.hashCode() * 31;
            boolean z = this.show;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return hashCode + i;
        }

        public String toString() {
            return "Subchart(defaultZoom=" + this.defaultZoom + ", show=" + this.show + ')';
        }

        public Subchart(List<Long> defaultZoom, boolean z) {
            Intrinsics.checkNotNullParameter(defaultZoom, "defaultZoom");
            this.defaultZoom = defaultZoom;
            this.show = z;
        }

        public final List<Long> getDefaultZoom() {
            return this.defaultZoom;
        }

        public final boolean getShow() {
            return this.show;
        }
    }

    /* compiled from: TelegramStatisticsChartData.kt */
    /* loaded from: classes4.dex */
    public static final class Types {

        /* renamed from: x */
        private final String f355x;

        /* renamed from: y0 */
        private final String f356y0;

        public static /* synthetic */ Types copy$default(Types types, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = types.f355x;
            }
            if ((i & 2) != 0) {
                str2 = types.f356y0;
            }
            return types.copy(str, str2);
        }

        public final String component1() {
            return this.f355x;
        }

        public final String component2() {
            return this.f356y0;
        }

        public final Types copy(String x, String y0) {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(y0, "y0");
            return new Types(x, y0);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Types) {
                Types types = (Types) obj;
                return Intrinsics.areEqual(this.f355x, types.f355x) && Intrinsics.areEqual(this.f356y0, types.f356y0);
            }
            return false;
        }

        public int hashCode() {
            return (this.f355x.hashCode() * 31) + this.f356y0.hashCode();
        }

        public String toString() {
            return "Types(x=" + this.f355x + ", y0=" + this.f356y0 + ')';
        }

        public Types(String x, String y0) {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(y0, "y0");
            this.f355x = x;
            this.f356y0 = y0;
        }

        public final String getX() {
            return this.f355x;
        }

        public final String getY0() {
            return this.f356y0;
        }
    }

    /* compiled from: TelegramStatisticsChartData.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final JSONObject generateJSONObject(String name, List<Long> xValues, List<? extends Number> yValues) {
            List listOf;
            List plus;
            List listOf2;
            List plus2;
            List listOf3;
            List listOf4;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(xValues, "xValues");
            Intrinsics.checkNotNullParameter(yValues, "yValues");
            Names names = new Names(name);
            listOf = CollectionsKt__CollectionsJVMKt.listOf("x");
            plus = CollectionsKt___CollectionsKt.plus((Collection) listOf, (Iterable) xValues);
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf("y0");
            plus2 = CollectionsKt___CollectionsKt.plus((Collection) listOf2, (Iterable) yValues);
            listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new List[]{plus, plus2});
            listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{(Long) CollectionsKt.first((List) xValues), (Long) CollectionsKt.last(xValues)});
            return new JSONObject(new Gson().toJson(new TelegramStatisticsChartData(null, listOf3, null, names, 0, new Subchart(listOf4, true), null, null, null, null, null, null, null, 8149, null)));
        }
    }
}
