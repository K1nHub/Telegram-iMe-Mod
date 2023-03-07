package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.p021ml.common.FirebaseMLException;
import com.google.firebase.p021ml.common.modeldownload.FirebaseLocalModel;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
/* loaded from: classes.dex */
public class zzoj {
    private MappedByteBuffer zzaug;
    private final Context zzauh;
    private final FirebaseLocalModel zzaui;

    public zzoj(Context context, FirebaseLocalModel firebaseLocalModel) {
        this.zzauh = context;
        this.zzaui = firebaseLocalModel;
    }

    public MappedByteBuffer load() throws FirebaseMLException {
        Preconditions.checkNotNull(this.zzauh, "Context can not be null");
        Preconditions.checkNotNull(this.zzaui, "Model source can not be null");
        MappedByteBuffer mappedByteBuffer = this.zzaug;
        if (mappedByteBuffer != null) {
            return mappedByteBuffer;
        }
        if (this.zzaui.getFilePath() != null) {
            try {
                FileChannel channel = new RandomAccessFile(this.zzaui.getFilePath(), "r").getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                this.zzaug = map;
                return map;
            } catch (IOException e) {
                String valueOf = String.valueOf(this.zzaui.getFilePath());
                throw new FirebaseMLException(valueOf.length() != 0 ? "Can not open the local file: ".concat(valueOf) : new String("Can not open the local file: "), 14, e);
            }
        } else if (this.zzaui.getAssetFilePath() != null) {
            String assetFilePath = this.zzaui.getAssetFilePath();
            try {
                AssetFileDescriptor openFd = this.zzauh.getAssets().openFd(assetFilePath);
                MappedByteBuffer map2 = new FileInputStream(openFd.getFileDescriptor()).getChannel().map(FileChannel.MapMode.READ_ONLY, openFd.getStartOffset(), openFd.getDeclaredLength());
                this.zzaug = map2;
                return map2;
            } catch (IOException e2) {
                StringBuilder sb = new StringBuilder(String.valueOf(assetFilePath).length() + 186);
                sb.append("Can not load the file from asset: ");
                sb.append(assetFilePath);
                sb.append(". Please double check your asset file name and ensure it's not compressed. See documentation for details how to use aaptOptions to skip file compression");
                throw new FirebaseMLException(sb.toString(), 14, e2);
            }
        } else {
            throw new FirebaseMLException("Can not load the model. Either filePath or assetFilePath must be set for the model.", 14);
        }
    }

    public final FirebaseLocalModel zzlv() {
        return this.zzaui;
    }
}
