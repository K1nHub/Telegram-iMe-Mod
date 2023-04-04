package com.iMe.fork.enums;

import com.iMe.utils.extentions.common.FileExtKt;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum PHOTO uses external variables
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
/* compiled from: TelegramCacheType.kt */
/* loaded from: classes3.dex */
public final class TelegramCacheType {
    private static final /* synthetic */ TelegramCacheType[] $VALUES;
    public static final Companion Companion;
    public static final TelegramCacheType DOCUMENTS;
    public static final TelegramCacheType MUSIC;
    public static final TelegramCacheType OTHER;
    public static final TelegramCacheType PHOTO;
    public static final TelegramCacheType STICKERS;
    public static final TelegramCacheType VIDEO;
    public static final TelegramCacheType VOICE;
    private final String colorKey;
    private final List<Integer> directoryTypes;
    private final int documentsMusicType;

    /* compiled from: TelegramCacheType.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TelegramCacheType.values().length];
            try {
                iArr[TelegramCacheType.PHOTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TelegramCacheType.VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TelegramCacheType.DOCUMENTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TelegramCacheType.MUSIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TelegramCacheType.VOICE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TelegramCacheType.STICKERS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TelegramCacheType.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ TelegramCacheType[] $values() {
        return new TelegramCacheType[]{PHOTO, VIDEO, DOCUMENTS, MUSIC, VOICE, STICKERS, OTHER};
    }

    public static final TelegramCacheType getTypeForFile(File file) {
        return Companion.getTypeForFile(file);
    }

    public static TelegramCacheType valueOf(String str) {
        return (TelegramCacheType) Enum.valueOf(TelegramCacheType.class, str);
    }

    public static TelegramCacheType[] values() {
        return (TelegramCacheType[]) $VALUES.clone();
    }

    private TelegramCacheType(String str, int i, String str2, List list, int i2) {
        this.colorKey = str2;
        this.directoryTypes = list;
        this.documentsMusicType = i2;
    }

    public final String getColorKey() {
        return this.colorKey;
    }

    public final List<Integer> getDirectoryTypes() {
        return this.directoryTypes;
    }

    public final int getDocumentsMusicType() {
        return this.documentsMusicType;
    }

    static {
        List listOf;
        List listOf2;
        List listOf3;
        List listOf4;
        List listOf5;
        List listOf6;
        List listOf7;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 100});
        PHOTO = new TelegramCacheType("PHOTO", 0, "statisticChartLine_blue", listOf, 0);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{2, 101});
        VIDEO = new TelegramCacheType("VIDEO", 1, "statisticChartLine_golden", listOf2, 0);
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{3, 5});
        DOCUMENTS = new TelegramCacheType("DOCUMENTS", 2, "statisticChartLine_green", listOf3, 1);
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{3, 5});
        MUSIC = new TelegramCacheType("MUSIC", 3, "statisticChartLine_indigo", listOf4, 2);
        listOf5 = CollectionsKt__CollectionsJVMKt.listOf(1);
        VOICE = new TelegramCacheType("VOICE", 4, "statisticChartLine_red", listOf5, 0);
        listOf6 = CollectionsKt__CollectionsJVMKt.listOf(4);
        STICKERS = new TelegramCacheType("STICKERS", 5, "statisticChartLine_lightgreen", listOf6, 0);
        listOf7 = CollectionsKt__CollectionsJVMKt.listOf(4);
        OTHER = new TelegramCacheType("OTHER", 6, "statisticChartLine_lightblue", listOf7, 0);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    public final String title() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String string = LocaleController.getString("LocalPhotoCache", C3316R.string.LocalPhotoCache);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"LocalPhotoCac…R.string.LocalPhotoCache)");
                return string;
            case 2:
                String string2 = LocaleController.getString("LocalVideoCache", C3316R.string.LocalVideoCache);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(\"LocalVideoCac…R.string.LocalVideoCache)");
                return string2;
            case 3:
                String string3 = LocaleController.getString("LocalDocumentCache", C3316R.string.LocalDocumentCache);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(\"LocalDocument…tring.LocalDocumentCache)");
                return string3;
            case 4:
                String string4 = LocaleController.getString("LocalMusicCache", C3316R.string.LocalMusicCache);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(\"LocalMusicCac…R.string.LocalMusicCache)");
                return string4;
            case 5:
                String string5 = LocaleController.getString("LocalAudioCache", C3316R.string.LocalAudioCache);
                Intrinsics.checkNotNullExpressionValue(string5, "getString(\"LocalAudioCac…R.string.LocalAudioCache)");
                return string5;
            case 6:
                String string6 = LocaleController.getString("AnimatedStickers", C3316R.string.AnimatedStickers);
                Intrinsics.checkNotNullExpressionValue(string6, "getString(\"AnimatedStick….string.AnimatedStickers)");
                return string6;
            case 7:
                String string7 = LocaleController.getString("LocalCache", C3316R.string.LocalCache);
                Intrinsics.checkNotNullExpressionValue(string7, "getString(\"LocalCache\", R.string.LocalCache)");
                return string7;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final List<File> getDirectories() {
        int collectionSizeOrDefault;
        List<File> listOf;
        if (WhenMappings.$EnumSwitchMapping$0[ordinal()] == 6) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new File(FileLoader.checkDirectory(4), "acache"));
            return listOf;
        }
        List<Integer> list = this.directoryTypes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : list) {
            arrayList.add(FileLoader.checkDirectory(number.intValue()));
        }
        return arrayList;
    }

    /* compiled from: TelegramCacheType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {

        /* compiled from: TelegramCacheType.kt */
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[TelegramCacheType.values().length];
                try {
                    iArr[TelegramCacheType.DOCUMENTS.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TelegramCacheType.MUSIC.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TelegramCacheType getTypeForFile(File file) {
            TelegramCacheType telegramCacheType;
            boolean z;
            Intrinsics.checkNotNullParameter(file, "file");
            TelegramCacheType[] values = TelegramCacheType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                telegramCacheType = null;
                if (i >= length) {
                    break;
                }
                TelegramCacheType telegramCacheType2 = values[i];
                List<File> directories = telegramCacheType2.getDirectories();
                if (!(directories instanceof Collection) || !directories.isEmpty()) {
                    for (File file2 : directories) {
                        if (Intrinsics.areEqual(file2 != null ? file2.getPath() : null, file.getParent())) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    telegramCacheType = telegramCacheType2;
                    break;
                }
                i++;
            }
            int i2 = telegramCacheType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[telegramCacheType.ordinal()];
            if (i2 == 1 || i2 == 2) {
                telegramCacheType = FileExtKt.isMusic(file) ? TelegramCacheType.MUSIC : TelegramCacheType.DOCUMENTS;
            }
            return telegramCacheType == null ? TelegramCacheType.OTHER : telegramCacheType;
        }
    }
}
