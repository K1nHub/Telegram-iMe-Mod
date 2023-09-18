package com.googlecode.mp4parser.boxes.mp4;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;
/* loaded from: classes4.dex */
public class ESDescriptorBox extends AbstractDescriptorBox {
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_2 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_3 = null;

    static {
        ajc$preClinit();
    }

    private static /* synthetic */ void ajc$preClinit() {
        Factory factory = new Factory("ESDescriptorBox.java", ESDescriptorBox.class);
        factory.makeSJP("method-execution", factory.makeMethodSig(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, "getEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"), 33);
        factory.makeSJP("method-execution", factory.makeMethodSig(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, "setEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor", "esDescriptor", "", "void"), 37);
        ajc$tjp_2 = factory.makeSJP("method-execution", factory.makeMethodSig(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, "equals", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "java.lang.Object", "o", "", "boolean"), 42);
        ajc$tjp_3 = factory.makeSJP("method-execution", factory.makeMethodSig(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, "hashCode", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "int"), 53);
    }

    public ESDescriptorBox() {
        super("esds");
    }

    public boolean equals(Object obj) {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_2, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || ESDescriptorBox.class != obj.getClass()) {
            return false;
        }
        ByteBuffer byteBuffer = this.data;
        ByteBuffer byteBuffer2 = ((ESDescriptorBox) obj).data;
        return byteBuffer == null ? byteBuffer2 == null : byteBuffer.equals(byteBuffer2);
    }

    public int hashCode() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_3, this, this));
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }
}
