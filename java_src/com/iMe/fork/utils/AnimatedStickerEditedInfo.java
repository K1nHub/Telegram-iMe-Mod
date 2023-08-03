package com.iMe.fork.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.math.BigInteger;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.p034io.FilesKt__FileReadWriteKt;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.tgnet.TLRPC$Document;
/* compiled from: AnimatedStickerEditedInfo.kt */
/* loaded from: classes3.dex */
public final class AnimatedStickerEditedInfo extends VideoEditedInfo {
    private final TLRPC$Document animatedSticker;
    private final long duration;

    static {
        new Companion(null);
    }

    public AnimatedStickerEditedInfo(TLRPC$Document animatedSticker, long j) {
        ArrayList<VideoEditedInfo.MediaEntity> arrayListOf;
        int i;
        int roundToInt;
        int roundToInt2;
        Intrinsics.checkNotNullParameter(animatedSticker, "animatedSticker");
        this.animatedSticker = animatedSticker;
        this.duration = j;
        BigInteger bigInteger = BigInteger.ONE;
        File file = new File(ApplicationLoader.getFilesDirFixed(), "temp_app_avatar_background.jpg");
        String absolutePath = file.getAbsolutePath();
        if (!file.exists()) {
            Bitmap createBitmap = Bitmap.createBitmap(512, 512, Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawColor(-1);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            createBitmap.compress(Bitmap.CompressFormat.JPEG, 60, byteArrayOutputStream);
            file.createNewFile();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "bytes.toByteArray()");
            FilesKt__FileReadWriteKt.writeBytes(file, byteArray);
        }
        this.startTime = 0L;
        this.start = (float) 0;
        this.endTime = j;
        this.end = BitmapDescriptorFactory.HUE_RED;
        this.rotationValue = 0;
        this.originalPath = absolutePath;
        this.estimatedSize = (j / 1000) * 115200;
        this.estimatedDuration = j;
        this.framerate = 30;
        this.originalDuration = j;
        this.filterState = null;
        this.paintPath = absolutePath;
        VideoEditedInfo.MediaEntity[] mediaEntityArr = new VideoEditedInfo.MediaEntity[1];
        VideoEditedInfo.MediaEntity mediaEntity = new VideoEditedInfo.MediaEntity();
        mediaEntity.type = (byte) 0;
        mediaEntity.width = 512.0f;
        mediaEntity.height = 512.0f;
        mediaEntity.document = animatedSticker;
        mediaEntity.text = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(mediaEntity.document, true).getAbsolutePath();
        if (MessageObject.isAnimatedStickerDocument(mediaEntity.document, true)) {
            mediaEntity.subType = (byte) (mediaEntity.subType | 1);
            BigInteger valueOf = BigInteger.valueOf(j);
            bigInteger.multiply(valueOf).divide(bigInteger.gcd(valueOf));
        }
        mediaEntity.viewWidth = 640;
        mediaEntity.viewHeight = 640;
        mediaEntity.width = 0.75f;
        mediaEntity.height = 0.75f;
        mediaEntity.f1495x = 0.125f;
        mediaEntity.f1496y = 0.125f;
        Unit unit = Unit.INSTANCE;
        mediaEntityArr[0] = mediaEntity;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(mediaEntityArr);
        this.mediaEntities = arrayListOf;
        this.isPhoto = true;
        float f = 512 / 854.0f;
        float max = Math.max(f, f);
        int i2 = 512 / ((int) (max < 1.0f ? 1.0f : max));
        int i3 = i2 % 16;
        if (i3 != 0) {
            roundToInt2 = MathKt__MathJVMKt.roundToInt(i2 / 16.0f);
            i = roundToInt2 * 16;
        } else {
            i = i2;
        }
        if (i3 != 0) {
            roundToInt = MathKt__MathJVMKt.roundToInt(i2 / 16.0f);
            i2 = roundToInt * 16;
        }
        this.resultWidth = i;
        this.originalWidth = i;
        this.resultHeight = i2;
        this.originalHeight = i2;
        this.bitrate = -1;
        this.muted = true;
        this.avatarStartTime = 0L;
    }

    /* compiled from: AnimatedStickerEditedInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
